package com.mycom.electronics.user.dto;

public class UserDto {
	private String id;
	private String pw;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public UserDto(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", pw=" + pw + "]";
	}
}
