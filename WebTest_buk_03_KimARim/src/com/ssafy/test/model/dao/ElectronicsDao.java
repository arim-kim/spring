package com.ssafy.test.model.dao;

import java.util.List;

import com.ssafy.test.dto.ElectronicsDto;

public interface ElectronicsDao {
	
	int addElec(ElectronicsDto ele);
	List<ElectronicsDto> listElec();
	ElectronicsDto getDetail(String code);
	int delete(String code);

}
