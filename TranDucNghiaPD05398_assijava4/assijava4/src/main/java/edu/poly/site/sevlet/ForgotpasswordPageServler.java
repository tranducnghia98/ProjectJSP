package edu.poly.site.sevlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.EmailUtils;
import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.UserDao;
import edu.poly.domain.Email;
import edu.poly.model.User;

/**
 * Servlet implementation class ForgotpasswordPageServler
 */
@WebServlet("/Forgotpassword")
public class ForgotpasswordPageServler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_FORGOTPASSWORD_PAGE);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String emailAddress = request.getParameter("email");
			String username = request.getParameter("username");

			UserDao dao = new UserDao();
			User user = dao.findByUserNameAndEmail(username, emailAddress);
			if (user == null) {
				request.setAttribute("erro", "Username or email rong");

			} else {
				Email email = new Email();
				email.setFrom("nghiatd74qt@gmail.com");
				email.setFromPassword("uujecctkbvpplmmr");

				email.setTo(emailAddress);
				email.setSubject("Fogot Password Function");
				StringBuilder sb = new StringBuilder();
				sb.append("Dear ").append(username).append("<br>");
				sb.append("Mat khau cua ban thay doi <br>");
				sb.append("Mat khau : <b>").append(user.getPassword()).append("</b>");

				email.setContent(sb.toString());
				EmailUtils.send(email);

				request.setAttribute("message", "Send to emai. Check mail");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_FORGOTPASSWORD_PAGE);

	}

}
