package com.mycom.electronics.electronics.service;

import java.util.List;

import com.mycom.electronics.electronics.dto.ElectronicsDto;

public interface ElectronicsService {
	
	int addElec(ElectronicsDto ele);

	List<ElectronicsDto> listElec();

	ElectronicsDto getDetail(String code);

	int delete(String code);
}
