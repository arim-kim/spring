package com.mycom.enjoytrip.Sido.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycom.enjoytrip.Sido.dto.SidoDto;

@Mapper
public interface SidoDao {
	List<SidoDto> sidoList();
}
