package edu.poly.domain;

public class ChangePasswordForm {
	private String username;
	private String password;
	private String confirmPassword;
	private String currenPassword;

	public ChangePasswordForm(String username, String password, String confirmPassword, String currenPassword) {
		super();
		this.username = username;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.currenPassword = currenPassword;
	}

	public ChangePasswordForm() {

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getCurrenPassword() {
		return currenPassword;
	}

	public void setCurrenPassword(String currenPassword) {
		this.currenPassword = currenPassword;
	}

}
