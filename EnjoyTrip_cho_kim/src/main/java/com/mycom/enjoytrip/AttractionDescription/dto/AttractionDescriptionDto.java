package com.mycom.enjoytrip.AttractionDescription.dto;

public class AttractionDescriptionDto {
	int content_id;
	String homepage; 
	String overview;
	String telname;
	
	public AttractionDescriptionDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AttractionDescriptionDto(int content_id, String homepage, String overview, String telname) {
		super();
		this.content_id = content_id;
		this.homepage = homepage;
		this.overview = overview;
		this.telname = telname;
	}
	public int getContent_id() {
		return content_id;
	}
	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getOverview() {
		return overview;
	}
	public void setOverview(String overview) {
		this.overview = overview;
	}
	public String getTelname() {
		return telname;
	}
	public void setTelname(String telname) {
		this.telname = telname;
	}
	@Override
	public String toString() {
		return "AttractionDescriptionDto [content_id=" + content_id + ", homepage=" + homepage + ", overview="
				+ overview + ", telname=" + telname + "]";
	} 
	
	
}
