package kobook.community.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kobook.common.domain.ImageUtil;
import kobook.community.dao.DonateDAO;
import kobook.community.domain.CommunityListModel;
import kobook.community.domain.CommunitySearch;
import kobook.community.domain.Donate;
import kobook.community.domain.DonateReply;

public class DonateService {
	
	private static DonateService service = new DonateService();
	private static DonateDAO dao;
	private static final int PAGE_SIZE = 5;

	public static DonateService getInstance() {
		dao = DonateDAO.getInstance();
		return service;
	}

	public int insertDonateService(HttpServletRequest request) throws Exception {
		Donate donate = new Donate();
		// ���� ���ε�(����ľ�, ũ��, ���ڵ�Ÿ��, �����̸���ø�Ǿ����� ��å(?))
		String uploadPath = request.getRealPath("upload");// ���
		int size = 20 * 1024 * 1024; // 20Mb
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());

		donate.setDonate_title(multi.getParameter("donate_title"));
		donate.setDonate_content(multi.getParameter("donate_content"));
		int user_id = Integer.parseInt(multi.getParameter("user_id"));
		donate.setUser_id(user_id);

		if (multi.getFilesystemName("donate_img") != null) {
			String donate_img = multi.getFilesystemName("donate_img");
			donate.setDonate_img(donate_img);

			// ����� �̹���(jpf,gif,png etc...) aaa.gif = aaa_small.gif
			String pattern = donate_img.substring(donate_img.lastIndexOf(".") + 1);// Ȯ����
																					// �̾Ƴ���
			String headName = donate_img.substring(0, donate_img.lastIndexOf("."));// ���ϸ�
																					// �̾Ƴ���

			// �������ϰ�ü����
			String imagePath = uploadPath + "\\" + donate_img; // ��μ���
			File src = new File(imagePath);

			// ������̹��� ��ü
			String thumImagePath = uploadPath + "\\" + headName + "_small." + pattern; // ��μ���
			File dest = new File(thumImagePath);

			if (pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")) {
				ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			}
		} else {
			donate.setDonate_img("");
		}
		donate.setDonate_id(dao.selectDonate_id() + 1);
		return dao.insertDonate(donate);
	}

	public CommunityListModel listDonateService(HttpServletRequest request, int requestPage) {
		/* �˻� */
		CommunitySearch search = new CommunitySearch();
		HttpSession session = request.getSession();

		// ���ο� �˻��õ�
		if (request.getParameter("temp") != null || request.getParameter("pageNum") == null) {
			session.removeAttribute("search");
		}
		// �˻� submit��
		if (request.getParameterValues("area") != null) {
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%" + request.getParameter("searchKey") + "%");
			session.setAttribute("search", search);
		}
		// �˻��� ����¡ ������ Ŭ��(������ �̵�)
		else if (session.getAttribute("search") != null) {
			search = (CommunitySearch) session.getAttribute("search");
		}

		/* ����¡ */
		// �������� �۰���, �ѱ۰���, ����������, ����������, ������������, ����������
		int totalCount = dao.countDonate(search);
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
		List<Donate> list = dao.listDonate(startRow, search);

		return new CommunityListModel(list, requestPage, totalPageCount, startPage, endPage);
	}

	public Donate donateDetailService(int donate_id, boolean bool) {
		if (bool) {
			dao.donateHitCount(donate_id);
		}
		return dao.selectDonateDetail(donate_id);
	}

	public int donateUpdateService(HttpServletRequest request) throws Exception {
		// ���� ���ε�(����ľ�, ũ��, ���ڵ�Ÿ��, �����̸���ø�Ǿ����� ��å(?))

		String uploadPath = request.getRealPath("upload");// ���
		int size = 20 * 1024 * 1024; // 20Mb
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());

		DonateService service = DonateService.getInstance();

		int donate_id = Integer.parseInt(multi.getParameter("donate_id"));
		Donate donate = service.donateDetailService(donate_id, false);

		donate.setDonate_id(donate_id);
		donate.setDonate_title(multi.getParameter("donate_title"));
		donate.setDonate_content(multi.getParameter("donate_content"));
		String donate_img = multi.getParameter("donate_img");

		if (multi.getFilesystemName("donateUimg") != null) {
			String donateUimg = multi.getFilesystemName("donateUimg");
				donate.setDonate_img(donateUimg);

			// ����� �̹���(jpf,gif,png etc...) aaa.gif = aaa_small.gif
			String pattern = donateUimg.substring(donateUimg.lastIndexOf(".") + 1);// Ȯ����
																					// �̾Ƴ���
			String headName = donateUimg.substring(0, donateUimg.lastIndexOf("."));// ���ϸ�
																					// �̾Ƴ���

			// �������ϰ�ü����
			String imagePath = uploadPath + "\\" + donateUimg; // ��μ���
			File src = new File(imagePath);

			// ������̹��� ��ü
			String thumImagePath = uploadPath + "\\" + headName + "_small." + pattern; // ��μ���
			File dest = new File(thumImagePath);

			if (pattern.equals("jpg") || pattern.equals("gif") || pattern.equals("png")) {
				ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			}
		} else {
			donate.setDonate_img(donate_img);
		}
		return dao.updateDonate(donate);
	}

	public int donateDeleteService(int donate_id) {
		int re = -1;
		int checkReplyCount = dao.countReply(donate_id);
		if (checkReplyCount > 0) {
			dao.deleteAllReply(donate_id);
		}
		int max_id = dao.selectDonate_id();
		if (max_id >= donate_id) {
			System.out.println(re);
			re = dao.deleteDonate(donate_id);
			dao.updateReply_id(donate_id);
			dao.updateDonate_id(donate_id);
			System.out.println(re);
		}
		System.out.println(re);
		return re;
	}

	public int insertDonateReplyService(DonateReply reply) {
		reply.setReply_id(dao.selectReply_id() + 1);
		return dao.insertDonateReply(reply);
	}

	public List<DonateReply> listDonateReplyService(int donate_id) {
		return dao.listDonateReply(donate_id);
	}

	public int updateDonateReplyService(DonateReply reply) {
		return dao.updateDonateReply(reply);
	}

	public int donateReplyDeleteService(int reply_id) {
		int re = -1;
		re = dao.deleteDonateReply(reply_id);
		return re;
	}

}
