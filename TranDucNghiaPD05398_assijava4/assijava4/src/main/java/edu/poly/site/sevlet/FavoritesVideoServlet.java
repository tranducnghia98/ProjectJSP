package edu.poly.site.sevlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtil;
import edu.poly.dao.FavoriteDao;
import edu.poly.model.Favorite;
import edu.poly.model.User;
import edu.poly.model.Video;
import javassist.bytecode.CodeIterator.Gap;

/**
 * Servlet implementation class FavoritesVideoServlet
 */
@WebServlet("/FavoritesVideoServlet")
public class FavoritesVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(!SessionUtil.isLogin(request)) {
			response.sendRedirect("./LoginPage");
			return;
		}
		String page = request.getParameter("page");
		String videoId = request.getParameter("videoId");

		if (videoId == null) {
			response.sendRedirect("./HomePage");
			return;
		}
		
		try {
			FavoriteDao dao = new FavoriteDao();
			Favorite favorite = new Favorite();
			Video video = new Video();
			video.setVideoId(videoId);
			favorite.setVideo(video);
			
			String username = SessionUtil.getLoginedUsername(request);
			User user = new User();
			user.setUserName(username);
			favorite.setUser(user);
			
			favorite.setLikeDate(new Date());
			
			dao.insert(favorite);
			request.setAttribute("message", "like video");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		if(page==null) {
			page="/HomePage";
			
		}
		request.getRequestDispatcher(page).forward(request, response);
		

	}

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
