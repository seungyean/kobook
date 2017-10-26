package kobook.community.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kobook.common.domain.ImageUtil;
import kobook.community.dao.BlackListDAO;
import kobook.community.domain.BlackList;
import kobook.community.domain.BlackListModel;
import kobook.community.domain.CommunitySearch;
//import kobook.community.domain.Person;

public class BlackListService {
	private static BlackListService service = new BlackListService();
	private static BlackListDAO dao;
	private static final int PAGE_SIZE = 5;

	public static BlackListService getInstance() {
		dao = BlackListDAO.getInstance();
		return service;
	}

	public int insertBlackListService(HttpServletRequest request) throws Exception {
		BlackList black = new BlackList();
		// 파일 업로드(경로파악, 크기, 인코딩타입, 파일이름중첩되었을때 정책(?))
		String uploadPath = request.getRealPath("upload");// 경로
		int size = 20 * 1024 * 1024; // 20Mb
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());

		int person_id = Integer.parseInt(multi.getParameter("person_id"));
		black.setPerson_id(person_id);
		black.setBlack_title(multi.getParameter("black_title"));
		black.setBlack_content(multi.getParameter("black_content"));
		black.setBlack_personid(multi.getParameter("black_personid"));

		if (multi.getFilesystemName("black_img") != null) {
			String black_img = multi.getFilesystemName("black_img");
			black.setBlack_img(black_img);

			// 썸네일 이미지(jpf,gif,png etc...) aaa.gif = aaa_small.gif
			String pattern = black_img.substring(black_img.lastIndexOf(".") + 1);// 확장자
																					// 뽑아내기
			String headName = black_img.substring(0, black_img.lastIndexOf("."));// 파일명
																					// 뽑아내기

			// 원본파일객체생성
			String imagePath = uploadPath + "\\" + black_img; // 경로설정
			File src = new File(imagePath);

			// 썸네일이미지 객체
			String thumImagePath = uploadPath + "\\" + headName + "_small." + pattern; // 경로설정
			File dest = new File(thumImagePath);

			if (pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")) {
				ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			}
		} else {
			black.setBlack_img("");
		}
		black.setBlack_id(dao.selectBlack_id() + 1);
		return dao.insertBlack(black);
	}

	public BlackListModel listBlackService(HttpServletRequest request, int requestPage) {
		// 검색
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
		int totalCount = dao.countBlack(search);
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
		List<BlackList> list = dao.listBlackList(startRow, search);

		return new BlackListModel(list, requestPage, totalPageCount, startPage, endPage);
	}

	// public Person selectPersonNameService(int person_id) {
	// Person person = dao.selectPersonName(person_id);
	// return person;
	// }

	public BlackList blackDetailService(int black_id) {
		return dao.selectBlackDetail(black_id);
	}

	public int blackUpdateService(HttpServletRequest request) throws Exception {
		String uploadPath = request.getRealPath("upload");
		int size = 30 * 1024 * 1024;

		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());

		BlackListService service = BlackListService.getInstance();
		int black_id = Integer.parseInt(multi.getParameter("black_id"));
		BlackList black = service.blackDetailService(black_id);

		black.setBlack_id(black_id);
		black.setBlack_title(multi.getParameter("black_title"));
		black.setBlack_content(multi.getParameter("black_content"));
		black.setBlack_personid(multi.getParameter("black_personid"));

		String black_img = multi.getParameter("black_img");
		if (multi.getFilesystemName("blackUimg") != null) {
			String blackUimg = multi.getFilesystemName("blackUimg");
			black.setBlack_img(blackUimg);

			String pattern = blackUimg.substring(blackUimg.lastIndexOf(".") + 1);
			String headName = blackUimg.substring(0, blackUimg.lastIndexOf("."));

			String imagePath = uploadPath + "\\" + blackUimg;
			File src = new File(imagePath);

			String thumImagePath = uploadPath + "\\" + headName + "_small." + pattern;
			File dest = new File(thumImagePath);

			if (pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")) {
				ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			}
		} else {
			black.setBlack_img(black_img);
		}
		return dao.updateBlackList(black);
	}

	public int blackDeleteService(int black_id) {
		int re = -1;
			re = dao.deleteBlackList(black_id);
		return re;
	}
}
