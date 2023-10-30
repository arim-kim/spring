package com.mycom.product.attendance.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycom.product.attendance.dto.AttendanceDto;

@Mapper
public interface AttendanceDao {

	int addAtt(AttendanceDto dto);

	List<AttendanceDto> allList();

	List<AttendanceDto> getList(String id);
	
	int delete(String ano);
	
	AttendanceDto detail(String ano);
}
