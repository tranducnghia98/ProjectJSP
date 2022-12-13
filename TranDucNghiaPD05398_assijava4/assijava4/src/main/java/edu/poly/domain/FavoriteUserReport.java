package edu.poly.domain;

import java.util.Date;

public class FavoriteUserReport {
	private String userName;
	private String fullName;
	private String email;
	private Date likeDate;

	public FavoriteUserReport(String userName, String fullName, String email, Date likeDate) {
		super();
		this.userName = userName;
		this.fullName = fullName;
		this.email = email;
		this.likeDate = likeDate;
	}

	public FavoriteUserReport() {

	}

	public String getuserName() {
		return userName;
	}

	public void setuserName(String userName) {
		this.userName = userName;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getLikeDate() {
		return likeDate;
	}

	public void setLikeDate(Date likeDate) {
		this.likeDate = likeDate;
	}

}
