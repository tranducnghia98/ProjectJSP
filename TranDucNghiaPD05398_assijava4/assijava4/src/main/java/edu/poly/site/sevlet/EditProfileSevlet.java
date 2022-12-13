package edu.poly.site.sevlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtil;
import edu.poly.dao.UserDao;
import edu.poly.model.User;

/**
 * Servlet implementation class EditProfileSevlet
 */
@WebServlet("/EditProfile")
public class EditProfileSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditProfileSevlet() {
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
		// TODO Auto-generated method stub

		String username = SessionUtil.getLoginedUsername(request);

		if (username == null) {
			request.getRequestDispatcher("LoginPage").forward(request, response);
			return;
		}

		try {

			UserDao dao = new UserDao();
			User user = dao.findById(username);

			request.setAttribute("user", user);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}

		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_EDITPROFILE_PAGE);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String username = SessionUtil.getLoginedUsername(request);
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());

			UserDao dao = new UserDao();
			User oldUser = dao.findById(username);

			user.setAdmin(oldUser.getAdmin());

			dao.update(user);
			request.setAttribute("message", "Update thành công");

			request.setAttribute("user", user);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_EDITPROFILE_PAGE);
	}

}
