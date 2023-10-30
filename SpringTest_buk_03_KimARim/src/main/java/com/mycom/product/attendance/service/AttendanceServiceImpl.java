package com.mycom.product.attendance.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mycom.product.attendance.dao.AttendanceDao;
import com.mycom.product.attendance.dto.AttendanceDto;

@Service
public class AttendanceServiceImpl implements AttendanceService {
	
	AttendanceDao dao;

	public AttendanceServiceImpl(AttendanceDao dao) {
		super();
		this.dao = dao;
	}

	@Override
	public int addAtt(AttendanceDto dto) {
		return dao.addAtt(dto);
	}

	@Override
	public List<AttendanceDto> allList() {
		return dao.allList();
	}

	@Override
	public List<AttendanceDto> getList(String number) {
		return dao.getList(number);
	}

	@Override
	public int delete(String ano) {
		return dao.delete(ano);
	}

	@Override
	public AttendanceDto detail(String ano) {
		// TODO Auto-generated method stub
		return dao.detail(ano);
	}
	
}
