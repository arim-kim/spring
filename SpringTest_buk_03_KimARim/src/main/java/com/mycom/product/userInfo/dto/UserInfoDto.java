package com.mycom.product.userInfo.dto;

public class UserInfoDto {

	private String id;
	private String pw;
	private String position;
	private String usernumber;
	private String name;
	private String rname;
	private int rclass;
	public UserInfoDto(String id, String pw, String position, String usernumber, String name, String rname,
			int rclass) {
		super();
		this.id = id;
		this.pw = pw;
		this.position = position;
		this.usernumber = usernumber;
		this.name = name;
		this.rname = rname;
		this.rclass = rclass;
	}
	@Override
	public String toString() {
		return "UserInfoDto [id=" + id + ", pw=" + pw + ", position=" + position + ", usernumber=" + usernumber
				+ ", name=" + name + ", rname=" + rname + ", rclass=" + rclass + "]";
	}
	public UserInfoDto() {
		super();
		// TODO Auto-generated constructor stub
	}
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
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getUsernumber() {
		return usernumber;
	}
	public void setUsernumber(String usernumber) {
		this.usernumber = usernumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public int getRclass() {
		return rclass;
	}
	public void setRclass(int rclass) {
		this.rclass = rclass;
	}
}
