package edu.poly.site.sevlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.CooKieUtil;
import edu.poly.common.SessionUtil;

/**
 * Servlet implementation class LogOffServlet
 */
@WebServlet("/LogOff")
public class LogOffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LogOffServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		CooKieUtil.add("Username", null, 0, response);
		SessionUtil.invalidate(request);
		request.setAttribute("isLogin", false);
		request.getRequestDispatcher("HomePage").forward(request, response);
	}

}
