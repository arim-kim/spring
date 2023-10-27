package com.ssafy.test.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssafy.test.dto.ElectronicsDto;
import com.ssafy.test.util.DBUtil;

public class ElectronicsDaoImpl implements ElectronicsDao {

	
	static ElectronicsDaoImpl instance = new ElectronicsDaoImpl();
	
	public static ElectronicsDaoImpl getInstance() {
		return instance; 
	}
	
	@Override
	public int addElec(ElectronicsDto ele) {
		
		int result = 0; 
		
		try {
			
			Connection conn =  DBUtil.getInstance().getConnection();
			PreparedStatement pstmt = conn.prepareStatement("insert into electronics values(?, ?, ?, ?, ?)");
			pstmt.setString(1, ele.getElectronicsCode());
			pstmt.setString(2, ele.getModel());
			pstmt.setString(3, ele.getType());
			pstmt.setInt(4, ele.getPrice());
			pstmt.setString(5, ele.getCompany());
			
			int re = pstmt.executeUpdate();
			return re; 
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return result ;
	}

	@Override
	public List<ElectronicsDto> listElec() {
		List<ElectronicsDto> list = new ArrayList<>();
		try {
			
			Connection conn =  DBUtil.getInstance().getConnection();
			PreparedStatement pstmt = conn.prepareStatement("select * from electronics");
			ResultSet rs = pstmt.executeQuery(); 
			
			while(rs.next()) {
				ElectronicsDto e = new ElectronicsDto(
						rs.getString("electronicsCode"),
						rs.getString("model"),
						rs.getString("type"),
						rs.getInt("price"),
						rs.getString("company")
						);
				
				
				list.add(e);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return list ;
	}

	@Override
	public ElectronicsDto getDetail(String code) {
		ElectronicsDto detail = null;
		try {
			
			Connection conn =  DBUtil.getInstance().getConnection();
			PreparedStatement pstmt = conn.prepareStatement("select * from electronics where electronicsCode = ?");
			pstmt.setString(1, code);
			ResultSet rs = pstmt.executeQuery(); 

			while(rs.next()) {
				
				detail = new ElectronicsDto(
						rs.getString("electronicsCode"),
						rs.getString("model"),
						rs.getString("type"),
						rs.getInt("price"),
						rs.getString("company"));
				
				System.out.println("찾음? 못찾음?");
				
				return detail;
				
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return detail ;
	}

	@Override
	public int delete(String code) {
		int result = 0; 
		
		try {
			
			Connection conn =  DBUtil.getInstance().getConnection();
			PreparedStatement pstmt = conn.prepareStatement("delete from electronics where electronicsCode = ?");
			pstmt.setString(1, code);
			
			int re = pstmt.executeUpdate();
			return re; 
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return result ;
	}

}
