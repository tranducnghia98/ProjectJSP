package edu.poly.site.sevlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.CooKieUtil;
import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtil;
import edu.poly.dao.UserDao;
import edu.poly.domain.LoginForm;
import edu.poly.model.User;

/**
 * Servlet implementation class LoginPageServlet
 */
@WebServlet("/LoginPage")
public class LoginPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = CooKieUtil.get("username", request);
		if (username == null) {
			PageInfo.prepareAndForwardsites(request, response, PageType.SITE_LOGIN_PAGE);

			return;
		}
		SessionUtil.add(request, "username", username);

		request.getRequestDispatcher("/HomePage").forward(request, response);
		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_LOGIN_PAGE);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			LoginForm form = new LoginForm();
			
			BeanUtils.populate(form, request.getParameterMap());

			UserDao dao = new UserDao();
			User user = dao.findById(form.getUsername());
			
			if (user != null && user.getPassword().equals(form.getPassword())) {
				SessionUtil.add(request, "username", user.getUserName());
				
				if (form.isRemember()) {
					CooKieUtil.add("username", form.getUsername(), 24, response);
				} else {
					CooKieUtil.add("username", form.getUsername(), 0, response);
				}
			
				System.out.println("thanh cong");
				request.setAttribute("isLogin", true);
				request.setAttribute("name", user.getFullName());
				if(user.getAdmin()==true) {
					PageInfo.prepareAndForward(request, response, PageType.SITE_HOME_PAGE);
				}
				request.getRequestDispatcher("/HomePage").forward(request, response);
				return;
			}
			request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu sai");
			System.out.println("fail");

		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_LOGIN_PAGE);
	}

}
