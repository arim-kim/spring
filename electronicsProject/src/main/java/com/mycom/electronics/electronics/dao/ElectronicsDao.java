package com.mycom.electronics.electronics.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycom.electronics.electronics.dto.ElectronicsDto;

@Mapper
public interface ElectronicsDao {
	
	int addElec(ElectronicsDto ele);

	List<ElectronicsDto> listElec();

	ElectronicsDto getDetail(String code);

	int delete(String code);
}
