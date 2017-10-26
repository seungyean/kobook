package kobook.community.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kobook.common.domain.ImageUtil;
import kobook.community.dao.PhotoDAO;
import kobook.community.domain.CommunitySearch;
import kobook.community.domain.Photo;
import kobook.community.domain.PhotoListModel;

public class PhotoService {
	private static PhotoService service = new PhotoService();
	private static PhotoDAO dao;
	private static final int PAGE_SIZE = 9;

	public static PhotoService getInstance() {
		dao = PhotoDAO.getInstance();
		return service;
	}
	
	public int insertPhotoService(HttpServletRequest request) throws Exception {
		Photo photo = new Photo();
		// 파일 업로드(경로파악, 크기, 인코딩타입, 파일이름중첩되었을때 정책(?))
		String uploadPath = request.getRealPath("upload");// 경로
		int size = 30 * 1024 * 1024; // 20Mb
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());
		
		int person_id = Integer.parseInt(multi.getParameter("person_id"));
		photo.setPhoto_title(multi.getParameter("photo_title"));
		photo.setPhoto_content(multi.getParameter("photo_content"));
		photo.setPerson_id(person_id);

		if (multi.getFilesystemName("photo_img") != null) {
			String photo_img = multi.getFilesystemName("photo_img");
			photo.setPhoto_img(photo_img);

			// 썸네일 이미지(jpf,gif,png etc...) aaa.gif = aaa_small.gif
			String pattern = photo_img.substring(photo_img.lastIndexOf(".") + 1);// 확장자
																					// 뽑아내기
			String headName = photo_img.substring(0, photo_img.lastIndexOf("."));// 파일명
																					// 뽑아내기

			// 원본파일객체생성
			String imagePath = uploadPath + "\\" + photo_img; // 경로설정
			File src = new File(imagePath);

			// 썸네일이미지 객체
			String thumImagePath = uploadPath + "\\" + headName + "_small." + pattern; // 경로설정
			File dest = new File(thumImagePath);

			if (pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")) {
				ImageUtil.resize(src, dest, 200, ImageUtil.RATIO);
			}
		} else {
			photo.setPhoto_img("");
		}
		photo.setPhoto_id(dao.selectPhoto_id() + 1);
		return dao.insertPhoto(photo);
	}

	public PhotoListModel listPhotoService(HttpServletRequest request, int requestPage) {
		 //검색 
		CommunitySearch search = new CommunitySearch();
		HttpSession session = request.getSession();

		// 새로운 검색시도
		if (request.getParameter("temp") != null || request.getParameter("pageNum") == null) {
			session.removeAttribute("search");
		}
		// 검색 submit시
		if (request.getParameterValues("area") != null) {
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%" + request.getParameter("searchKey") + "%");
			session.setAttribute("search", search);
		}
		// 검색후 페이징 페이지 클릭(페이지 이동)
		else if (session.getAttribute("search") != null) {
			search = (CommunitySearch) session.getAttribute("search");
		}

		// 페이징 
		// 페이지당 글갯수, 총글갯수, 총페이지수, 시작페이지, 마지막페이지, 현재페이지
		int totalCount = dao.countPhoto(search);
		int totalPageCount = totalCount / PAGE_SIZE;
		if (totalCount % PAGE_SIZE > 0) {
			totalPageCount++;
		}

		int startPage = requestPage - (requestPage - 1) % 3;
		int endPage = startPage + 2;
		if (endPage > totalPageCount) {
			endPage = totalPageCount;
		}

		int startRow = (requestPage - 1) * PAGE_SIZE;
		List<Photo> list = dao.listPhoto(startRow, search);

		return new PhotoListModel(list, requestPage, totalPageCount, startPage, endPage);
	}

	public Photo photoDetailService(int photo_id, boolean bool) {
		if (bool) {
			dao.photoHitCount(photo_id);
		}
		return dao.selectPhotoDetail(photo_id);
	}

	public int photoUpdateService(HttpServletRequest request) throws Exception {
		// 파일 업로드(경로파악, 크기, 인코딩타입, 파일이름중첩되었을때 정책(?))

		String uploadPath = request.getRealPath("upload");// 경로
		int size = 20 * 1024 * 1024; // 20Mb
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());

		PhotoService service = PhotoService.getInstance();

		int photo_id = Integer.parseInt(multi.getParameter("photo_id"));
		Photo photo = service.photoDetailService(photo_id, false);

		photo.setPhoto_id(photo_id);
		photo.setPhoto_title(multi.getParameter("photo_title"));
		photo.setPhoto_content(multi.getParameter("photo_content"));
		String photo_img = multi.getParameter("photo_img");

		if (multi.getFilesystemName("photoUimg") != null) {
			String photoUimg = multi.getFilesystemName("photoUimg");
				photo.setPhoto_img(photoUimg);

			// 썸네일 이미지(jpf,gif,png etc...) aaa.gif = aaa_small.gif
			String pattern = photoUimg.substring(photoUimg.lastIndexOf(".") + 1);// 확장자
																					// 뽑아내기
			String headName = photoUimg.substring(0, photoUimg.lastIndexOf("."));// 파일명
																					// 뽑아내기

			// 원본파일객체생성
			String imagePath = uploadPath + "\\" + photoUimg; // 경로설정
			File src = new File(imagePath);

			// 썸네일이미지 객체
			String thumImagePath = uploadPath + "\\" + headName + "_small." + pattern; // 경로설정
			File dest = new File(thumImagePath);

			if (pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")) {
				ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			}
		} else {
			photo.setPhoto_img(photo_img);
		}
		return dao.updatePhoto(photo);
	}

	public int photoDeleteService(int photo_id) {
		int re = -1;
		int max_id = dao.selectPhoto_id();
		if (max_id >= photo_id) {
			System.out.println(re);
			re = dao.deletePhoto(photo_id);
			dao.updatePhoto_id(photo_id);
			System.out.println(re);
		}
		System.out.println(re);
		return re;
	}
	
	public int photoHeartUpService(int photo_id) {
		return dao.photoHeartUp(photo_id);
	}
	
	public int photoHeartDownService(int photo_id) {
		return dao.photoHeartDown(photo_id);
	}	
	


/*
//	public Person selectPersonNameService(int person_id, int donate_id) {
//		Person person = dao.selectPersonName(person_id, donate_id);
//		return person;
//	}

	*/
}
