package com.mycom.product.attendance.dto;

public class AttendanceDto {

	// ano, usernumber, name,   rname, rclass , issuedate, issue,
	String ano;
	String usernumber;
	String name;
	private String rname;
	private int rclass;
	String issuedate;
	String issue;

	public AttendanceDto(String ano, String usernumber, String name, String rname, int rclass, String issuedate,
			String issue) {
		super();
		this.ano = ano;
		this.usernumber = usernumber;
		this.name = name;
		this.rname = rname;
		this.rclass = rclass;
		this.issuedate = issuedate;
		this.issue = issue;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public AttendanceDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getAno() {
		return ano;
	}

	public void setAno(String ano) {
		this.ano = ano;
	}

	public String getUsernumber() {
		return usernumber;
	}

	public void setUsernumber(String usernumber) {
		this.usernumber = usernumber;
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

	public String getIssuedate() {
		return issuedate;
	}

	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}

	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}

	@Override
	public String toString() {
		return "AttendanceDto [ano=" + ano + ", usernumber=" + usernumber + ", username=" + name + ", rname="
				+ rname + ", rclass=" + rclass + ", issuedate=" + issuedate + ", issue=" + issue + "]";
	}

}
