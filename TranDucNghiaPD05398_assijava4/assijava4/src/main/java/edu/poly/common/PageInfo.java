package edu.poly.common;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;

public class PageInfo {
	public static Map<PageType, PageInfo> pageRoute = new HashedMap();

	static {
		pageRoute.put(PageType.USER_MANAGEMENT_PAGE, new PageInfo("User Management", "/admin/users/users.jsp", null));
		pageRoute.put(PageType.REPORTS_MANAGEMENT_PAGE,
				new PageInfo("Report Management", "/admin/report/reports.jsp", null));
		pageRoute.put(PageType.VIDEOS_MANAGEMENT_PAGE,
				new PageInfo("Videos Management", "/admin/videos/videos.jsp", null));
		pageRoute.put(PageType.SITE_HOME_PAGE, new PageInfo("Home page", "/sites/home/home.jsp", null));
		pageRoute.put(PageType.SITE_LOGIN_PAGE, new PageInfo("Login page", "/sites/users/login.jsp", null));
		pageRoute.put(PageType.SITE_REGISTRATION_PAGE,
				new PageInfo("Resgistratin page", "/sites/users/registration.jsp", null));
		pageRoute.put(PageType.SITE_CHANGEPASSWORD_PAGE,
				new PageInfo("ChangePassword page", "/sites/users/changepassword.jsp", null));
		pageRoute.put(PageType.SITE_FORGOTPASSWORD_PAGE,
				new PageInfo("Forgotpassword page", "/sites/users/forgotpassword.jsp", null));
		pageRoute.put(PageType.SITE_EDITPROFILE_PAGE,
				new PageInfo("Editprofile page", "/sites/users/edit-profile.jsp", null));
		pageRoute.put(PageType.VIDEO_SHARE_PAGE, new PageInfo("ShareVideo page", "/sites/videos/share.jsp", null));
		pageRoute.put(PageType.VIDEO_FAVORITES_PAGE,
				new PageInfo("FavoriteVideo page", "/sites/videos/favorite.jsp", null));
		pageRoute.put(PageType.VIDEO_DETAIL_PAGE, new PageInfo("DetailVideo page", "/sites/videos/detail.jsp", null));

	}

	public static void prepareAndForward(HttpServletRequest request, HttpServletResponse response, PageType pageType)
			throws ServletException, IOException {
		PageInfo page = pageRoute.get(pageType);

		request.setAttribute("page", page);

		request.getRequestDispatcher("/admin/layout.jsp").forward(request, response);
	}

	public static void prepareAndForwardsites(HttpServletRequest request, HttpServletResponse response,
			PageType pageType) throws ServletException, IOException {
		PageInfo page = pageRoute.get(pageType);

		request.setAttribute("page", page);

		request.getRequestDispatcher("/sites/layout.jsp").forward(request, response);
	}

	private String title;
	private String contentUrl;
	private String scriptUrl;

	public PageInfo() {
		// TODO Auto-generated constructor stub
	}

	public PageInfo(String title, String contentUrl, String scriptUrl) {
		super();
		this.title = title;
		this.contentUrl = contentUrl;
		this.scriptUrl = scriptUrl;
	}

	public static Map<PageType, PageInfo> getPageRoute() {
		return pageRoute;
	}

	public static void setPageRoute(Map<PageType, PageInfo> pageRoute) {
		PageInfo.pageRoute = pageRoute;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContentUrl() {
		return contentUrl;
	}

	public void setContentUrl(String contentUrl) {
		this.contentUrl = contentUrl;
	}

	public String getScriptUrl() {
		return scriptUrl;
	}

	public void setScriptUrl(String scriptUrl) {
		this.scriptUrl = scriptUrl;
	}
}
