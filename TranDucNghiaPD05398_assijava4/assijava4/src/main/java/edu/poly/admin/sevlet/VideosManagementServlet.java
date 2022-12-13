package edu.poly.admin.sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.UploadUtil;
import edu.poly.dao.VideoDao;
import edu.poly.model.Video;

/**
 * Servlet implementation class VideosManagementServlet
 */
@WebServlet({ "/Admin/VideosManagementServlet", "/Admin/VideosManagementServlet/create",
		"/Admin/VideosManagementServlet/update", "/Admin/VideosManagementServlet/delete",
		"/Admin/VideosManagementServlet/reset", "/Admin/VideosManagementServlet/edit" })
@MultipartConfig
public class VideosManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURL().toString();
		if (url.contains("edit")) {
			edit(request, response);
			return;
		}
		if (url.contains("delete")) {
			delete(request, response);
			return;

		}
		if (url.contains("reset")) {
			reset(request, response);
			return;

		}

		Video video = new Video();
		video.setPoster("image/th (1).jpg");
		findAll(request, response);
		request.setAttribute("video", video);
		PageInfo.prepareAndForward(request, response, PageType.VIDEOS_MANAGEMENT_PAGE);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURL().toString();

		if (url.contains("create")) {
			create(request, response);

			return;
		}
		if (url.contains("edit")) {
			edit(request, response);
			return;
		}
		if (url.contains("update")) {
			update(request, response);
			return;
		}
		if (url.contains("delete")) {
			delete(request, response);
			return;

		}
		if (url.contains("reset")) {
			reset(request, response);
			return;

		}

	}

	private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		try {
			BeanUtils.populate(video, request.getParameterMap());

			video.setPoster("assijava4/uploads/"
					+ UploadUtil.processUploadFile("cover", "assijava4/uploads/", video.getVideoId(), request));

			VideoDao dao = new VideoDao();
			dao.insert(video);

			request.setAttribute("message", "thanh Cong");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("video", video);
			request.setAttribute("error", "Loi" + e.getMessage());
		}
		findAll(request, response);
		PageInfo.prepareAndForward(request, response, PageType.VIDEOS_MANAGEMENT_PAGE);

	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("videoId");

		if (id == null) {
			request.setAttribute("error", "Video id is required ");
			PageInfo.prepareAndForward(request, response, PageType.VIDEOS_MANAGEMENT_PAGE);
			return;
		}
		try {
			VideoDao dao = new VideoDao();
			Video video = dao.findById(id);

			request.setAttribute("video", video);
			findAll(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", "Loi: " + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEOS_MANAGEMENT_PAGE);

	}

	private void reset(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Video video = new Video();

		video.setPoster("image/th2.jpg");

		request.setAttribute("video", video);
		findAll(request, response);
		PageInfo.prepareAndForward(request, response, PageType.VIDEOS_MANAGEMENT_PAGE);

	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		try {
			BeanUtils.populate(video, request.getParameterMap());
			VideoDao dao = new VideoDao();
			Video oldVideo = dao.findById(video.getVideoId());

			if (request.getPart("cover").getSize() == 0) {
				video.setPoster(oldVideo.getPoster());
			} else {
				video.setPoster(
						"uploads/" + UploadUtil.processUploadFile("cover", "uploads/", video.getVideoId(), request));
			}
			dao.update(video);

			request.setAttribute("video", video);
			request.setAttribute("message", "Update Thanh Cong");
			findAll(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", "Loi: " + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEOS_MANAGEMENT_PAGE);
	}

	private void findAll(HttpServletRequest request, HttpServletResponse response) {

		try {

			VideoDao dao = new VideoDao();
			List<Video> list = dao.findAll();

			request.setAttribute("videos", list);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", "Loi: " + e.getMessage());
		}

	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String id = request.getParameter("videoId");

		if (id == null) {
			request.setAttribute("error", "Video id is required ");
			PageInfo.prepareAndForward(request, response, PageType.VIDEOS_MANAGEMENT_PAGE);
			return;
		}
		try {
			VideoDao dao = new VideoDao();
			Video video = dao.findById(id);

			if (video == null) {
				request.setAttribute("error", "Video id not found");
				PageInfo.prepareAndForward(request, response, PageType.VIDEOS_MANAGEMENT_PAGE);
				return;
			}
			dao.delete(id);
			request.setAttribute("message", "Xoa Thanh Cong");
			request.setAttribute("video", new Video());

			findAll(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", "Loi: " + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEOS_MANAGEMENT_PAGE);

	}
}
