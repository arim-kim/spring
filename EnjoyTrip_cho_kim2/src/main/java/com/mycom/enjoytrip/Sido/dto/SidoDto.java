package com.mycom.enjoytrip.Sido.dto;


public class SidoDto {

	private int sido_code ; 
	private String sido_name;
	
	public int getSidoCode() {
		return sido_code;
	}
	public void setSidoCode(int sidoCode) {
		this.sido_code = sidoCode;
	}
	public String getSidoName() {
		return sido_name;
	}
	public void setSidoName(String sidoName) {
		this.sido_name = sidoName;
	}
	public SidoDto() {
		super();
	}
	@Override
	public String toString() {
		return "SidoDto [sidoCode=" + sido_code + ", sidoName=" + sido_name + "]";
	}
	public SidoDto(int sido_code, String sido_name) {
		super();
		this.sido_code = sido_code;
		this.sido_name = sido_name;
	}
	

	
}
