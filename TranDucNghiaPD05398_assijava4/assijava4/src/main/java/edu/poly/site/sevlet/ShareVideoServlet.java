package edu.poly.site.sevlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import edu.poly.common.EmailUtils;
import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtil;
import edu.poly.dao.ShareDao;
import edu.poly.dao.UserDao;
import edu.poly.domain.Email;
import edu.poly.model.Share;
import edu.poly.model.User;
import edu.poly.model.Video;

/**
 * Servlet implementation class ShareVideoServlet
 */
@WebServlet("/ShareVideo")
public class ShareVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShareVideoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if(!SessionUtil.isLogin(request)) {
			response.sendRedirect("./LoginPage");
			return;
		}
		
		String videoId = request.getParameter("videoId");

		if (videoId == null) {
			response.sendRedirect("/HomePage");
			return;
		}
		request.setAttribute("videoId", videoId);
		PageInfo.prepareAndForwardsites(request, response, PageType.VIDEO_SHARE_PAGE);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String emailAddress = request.getParameter("email");
			String videoId = request.getParameter("videoId");

			if (videoId == null) {
				request.setAttribute("erro", "Video is Null");

			} else {
				Email email = new Email();
				email.setFrom("nghiatd74qt@gmail.com");
				email.setFromPassword("uujecctkbvpplmmr");

				email.setTo(emailAddress);
				email.setSubject("Share Favorite video");
				StringBuilder sb = new StringBuilder();
				sb.append("Dear !!!").append("<br>");
				sb.append("See video with you <br>");
				sb.append("You click the link").append(String.format("<a href = '' > View video</a></br>", videoId));

				email.setContent(sb.toString());
				EmailUtils.send(email);
				ShareDao dao = new ShareDao();
				Share share = new Share();

				share.setEmails(emailAddress);
				share.setSharedDate(new Date());
				
				String username = SessionUtil.getLoginedUsername(	request);
				User user = new User();
				user.setUserName(username);
				
				share.setUser(user);
				
				Video video = new Video();
				video.setVideoId(videoId);
					share.setVideo(video);
					
					dao.insert(share);
				request.setAttribute("message", "Video has been sent");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAndForwardsites(request, response, PageType.VIDEO_SHARE_PAGE);

	}

}
