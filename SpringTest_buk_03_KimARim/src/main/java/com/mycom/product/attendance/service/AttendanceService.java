package com.mycom.product.attendance.service;

import java.util.List;

import com.mycom.product.attendance.dto.AttendanceDto;

public interface AttendanceService {

	int addAtt(AttendanceDto dto);

	List<AttendanceDto> allList();

	List<AttendanceDto> getList(String id);
	
	int delete(String ano);
	
	AttendanceDto detail(String ano);

}
