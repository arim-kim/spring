package com.mycom.enjoytrip.AttractionInfo.dto;

public class AttractionInfoDto {

	private int content_id;
	private int content_type_id;
	private String title;
	private String addr1;
	private String addr2;
	private String zipcode;
	private String tel;
	private String first_image;
	private int sido_code;
	private int gugun_code;
	private double latitude;
	private double logitude;

	private String user_id;
	private int bookmark_id;

	public int getContent_id() {
		return content_id;
	}

	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}

	public int getContent_type_id() {
		return content_type_id;
	}

	public void setContent_type_id(int content_type_id) {
		this.content_type_id = content_type_id;
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

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getFirst_image() {
		return first_image;
	}

	public void setFirst_image(String first_image) {
		this.first_image = first_image;
	}

	public int getSido_code() {
		return sido_code;
	}

	public void setSido_code(int sido_code) {
		this.sido_code = sido_code;
	}

	public int getGugun_code() {
		return gugun_code;
	}

	public void setGugun_code(int gugun_code) {
		this.gugun_code = gugun_code;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getBookmark_id() {
		return bookmark_id;
	}

	public void setBookmark_id(int bookmark_id) {
		this.bookmark_id = bookmark_id;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLogitude() {
		return logitude;
	}

	public void setLogitude(double logitude) {
		this.logitude = logitude;
	}

	@Override
	public String toString() {
		return "AttractionInfoDto [content_id=" + content_id + ", content_type_id=" + content_type_id + ", title="
				+ title + ", addr1=" + addr1 + ", addr2=" + addr2 + ", zipcode=" + zipcode + ", tel=" + tel
				+ ", first_image=" + first_image + ", sido_code=" + sido_code + ", gugun_code=" + gugun_code
				+ ", latitude=" + latitude + ", logitude=" + logitude + ", user_id=" + user_id + ", bookmark_id="
				+ bookmark_id + "]";
	}

	public AttractionInfoDto() {
		super();
	}

	public AttractionInfoDto(int content_id, int content_type_id, String title, String addr1, String addr2,
			String zipcode, String tel, String first_image, int sido_code, int gugun_code, double latitude,
			double logitude, String user_id, int bookmark_id) {
		super();
		this.content_id = content_id;
		this.content_type_id = content_type_id;
		this.title = title;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.zipcode = zipcode;
		this.tel = tel;
		this.first_image = first_image;
		this.sido_code = sido_code;
		this.gugun_code = gugun_code;
		this.latitude = latitude;
		this.logitude = logitude;
		this.user_id = user_id;
		this.bookmark_id = bookmark_id;
	}

}
