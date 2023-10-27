package com.mycom.enjoytrip.board.dto;

public class BoardDto {
	
	
	private int articleNo;
	private int loc_no;
	private String title;
	private String user_id;
	private String content;
	private String visit_time;
	private String registerTime;

	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDto(int articleNo, int loc_no, String title, String user_id, String content, String visit_time,
			String registerTime) {
		super();
		this.articleNo = articleNo;
		this.loc_no = loc_no;
		this.title = title;
		this.user_id = user_id;
		this.content = content;
		this.visit_time = visit_time;
		this.registerTime = registerTime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getArticleNo() {
		return articleNo;
	}

	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}

	public int getLoc_no() {
		return loc_no;
	}

	public void setLoc_no(int loc_no) {
		this.loc_no = loc_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getVisit_time() {
		return visit_time;
	}

	public void setVisit_time(String visit_time) {
		this.visit_time = visit_time;
	}

	public String getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}

	@Override
	public String toString() {
		return "BoardDto [articleNo=" + articleNo + ", loc_no=" + loc_no + ", title=" + title + ", user_id=" + user_id
				+ ", content=" + content + ", visit_time=" + visit_time + ", registerTime=" + registerTime + "]";
	}

}
