package com.mycom.enjoytrip.Sido.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mycom.enjoytrip.Sido.dao.SidoDao;
import com.mycom.enjoytrip.Sido.dto.SidoDto;

@Service
public class SidoServiceImpl implements SidoService {

	SidoDao dao; 
	
	
	public SidoServiceImpl(SidoDao dao) {
		super();
		this.dao = dao;
	}


	@Override
	public List<SidoDto> sidoList() {
		return dao.sidoList();
	}

}
