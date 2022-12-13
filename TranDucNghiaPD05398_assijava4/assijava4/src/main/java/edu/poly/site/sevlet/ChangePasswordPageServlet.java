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
import edu.poly.domain.ChangePasswordForm;

/**
 * Servlet implementation class ChangePasswordPageServlet
 */
@WebServlet("/ChangePassword")
public class ChangePasswordPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = SessionUtil.getLoginedUsername(request);

		if (username == null) {
			request.getRequestDispatcher("LoginPage").forward(request, response);
			return;
		}

		request.setAttribute("username", username);
		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_CHANGEPASSWORD_PAGE);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String username = SessionUtil.getLoginedUsername(request);

			ChangePasswordForm form = new ChangePasswordForm();
			BeanUtils.populate(form, request.getParameterMap());
			request.setAttribute("username", username);

			if (!form.getConfirmPassword().equals(form.getPassword())) {
				request.setAttribute("erro", "Sai mat khau");
			} else {
				UserDao dao = new UserDao();
				dao.changePassword(form.getUsername(), form.getCurrenPassword(), form.getPassword());
				System.out.println("Doi thanh cong");
				request.setAttribute("message", "Thanh cong");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_CHANGEPASSWORD_PAGE);
	}

}
