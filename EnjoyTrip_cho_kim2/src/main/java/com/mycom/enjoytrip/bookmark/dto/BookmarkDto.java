package com.mycom.enjoytrip.bookmark.dto;

public class BookmarkDto {

	private String title; 
	private String addr1; 
	private String fisrt_image; 
	private int bookmark_id;
	private String user_id;
	private int loc_id;
	private String created_at;
	
	
	public BookmarkDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookmarkDto(String title, String addr1, String fisrt_image, int bookmark_id, String user_id, int loc_id,
			String created_at) {
		super();
		this.title = title;
		this.addr1 = addr1;
		this.fisrt_image = fisrt_image;
		this.bookmark_id = bookmark_id;
		this.user_id = user_id;
		this.loc_id = loc_id;
		this.created_at = created_at;
	}

	@Override
	public String toString() {
		return "BookmarkDto [title=" + title + ", addr1=" + addr1 + ", fisrt_image=" + fisrt_image + ", bookmark_id="
				+ bookmark_id + ", user_id=" + user_id + ", loc_id=" + loc_id + ", created_at=" + created_at + "]";
	}

	public int getBookmakr_id() {
		return bookmark_id;
	}
	public void setBookmakr_id(int bookmakr_id) {
		this.bookmark_id = bookmakr_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getLoc_id() {
		return loc_id;
	}
	public void setLoc_id(int loc_id) {
		this.loc_id = loc_id;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getFirstImage() {
		return fisrt_image;
	}

	public void setFirstImage(String firstImage) {
		this.fisrt_image = firstImage;
	}


	
}
