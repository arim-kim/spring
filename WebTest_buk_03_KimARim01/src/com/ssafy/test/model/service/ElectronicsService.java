package com.ssafy.test.model.service;

import java.util.List;

import com.ssafy.test.dto.ElectronicsDto;

public interface ElectronicsService {
	int addElec(ElectronicsDto ele);
	List<ElectronicsDto> listElec();
	ElectronicsDto getDetail(String code);
	int delete(String code);
}
