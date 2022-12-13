package edu.poly.admin.sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.FavoriteDao;
import edu.poly.dao.VideoDao;
import edu.poly.domain.FavoriteReport;
import edu.poly.domain.FavoriteUserReport;
import edu.poly.model.Video;

/**
 * Servlet implementation class ReportsManagementServlet
 */
@WebServlet("/ReportsManagementServlet")
public class ReportsManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		reportFavoriteByVideo(request, response);
		reportFavoriteUserByVideo(request, response);
		PageInfo.prepareAndForward(request, response, PageType.REPORTS_MANAGEMENT_PAGE);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void reportFavoriteUserByVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String videoUserId = request.getParameter("videoUserId");
			VideoDao vdao = new VideoDao();
			List<Video> vList = vdao.findAll();
			if (videoUserId == null && vList.size() > 0) {
				videoUserId = vList.get(0).getVideoId();
			}

			FavoriteDao dao = new FavoriteDao();
			List<FavoriteUserReport> list = dao.reportFavoriteUserByVideo(videoUserId);

			request.setAttribute("videoUserId", videoUserId);
			request.setAttribute("vList", vList);

			request.setAttribute("favUser", list);
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("error", "Err " + e.getMessage());
		}
	}

	protected void reportFavoriteByVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			FavoriteDao dao = new FavoriteDao();
			List<FavoriteReport> list = dao.reportFavoriteByVideo();

			request.setAttribute("favlist", list);

		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("error", "Err " + e.getMessage());
		}
	}

}
