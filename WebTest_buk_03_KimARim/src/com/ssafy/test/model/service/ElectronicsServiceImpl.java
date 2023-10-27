package com.ssafy.test.model.service;

import java.util.List;

import com.ssafy.test.dto.ElectronicsDto;
import com.ssafy.test.model.dao.ElectronicsDaoImpl;

public class ElectronicsServiceImpl implements ElectronicsService {

	static ElectronicsServiceImpl instance = new ElectronicsServiceImpl();
	
	public static ElectronicsServiceImpl getInstance() {
		return instance; 
	}
	
	@Override
	public int addElec(ElectronicsDto ele) {
		return ElectronicsDaoImpl.getInstance().addElec(ele);
	}

	@Override
	public List<ElectronicsDto> listElec() {
		// TODO Auto-generated method stub
		return ElectronicsDaoImpl.getInstance().listElec();
	}

	@Override
	public ElectronicsDto getDetail(String code) {
		// TODO Auto-generated method stub
		return ElectronicsDaoImpl.getInstance().getDetail(code);
	}

	@Override
	public int delete(String code) {
		// TODO Auto-generated method stub
		return ElectronicsDaoImpl.getInstance().delete(code);
	}

}
