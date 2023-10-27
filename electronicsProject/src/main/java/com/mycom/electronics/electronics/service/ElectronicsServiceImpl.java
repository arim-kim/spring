package com.mycom.electronics.electronics.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mycom.electronics.electronics.dao.ElectronicsDao;
import com.mycom.electronics.electronics.dto.ElectronicsDto;


@Service
public class ElectronicsServiceImpl implements ElectronicsService {
	
	private final ElectronicsDao dao;
	
	public ElectronicsServiceImpl(ElectronicsDao dao) {
		super();
		this.dao = dao;
	}
	
	@Override
	public int addElec(ElectronicsDto dto) {
		return dao.addElec(dto);
		
	}

	@Override
	public List<ElectronicsDto> listElec() {
		// TODO Auto-generated method stub
		return dao.listElec();
	}

	@Override
	public ElectronicsDto getDetail(String code) {
		// TODO Auto-generated method stub
		return dao.getDetail(code);
	}

	@Override
	public int delete(String code) {
		// TODO Auto-generated method stub
		return dao.delete(code);
	}

}
