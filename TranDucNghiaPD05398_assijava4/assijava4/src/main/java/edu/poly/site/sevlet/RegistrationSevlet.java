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
import edu.poly.dao.UserDao;
import edu.poly.model.User;

@WebServlet("/Registration")
public class RegistrationSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_REGISTRATION_PAGE);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		try {

			BeanUtils.populate(user, request.getParameterMap());

			UserDao dao = new UserDao();
			dao.insert(user);

			request.setAttribute("message", "Đăng kí thành công");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", "Erro:" + e.getMessage());
		}
		request.setAttribute("user", user);
		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_REGISTRATION_PAGE);
	}

//		User user = new User();
//		try {
//
//			BeanUtils.populate(user, request.getParameterMap());
//
//			UserDao dao = new UserDao();
//			dao.insert(user);
//			System.out.println("dang ki thanh cong");
//			request.getRequestDispatcher("/LoginPage").forward(request, response);
//			return;
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//			System.out.println("loiiii");
//			request.setAttribute("error", e.getMessage());
//		}
//		request.setAttribute("user", user);
//		PageInfo.prepareAndForwardsites(request, response, PageType.SITE_REGISTRATION_PAGE);
//
//	}

}
