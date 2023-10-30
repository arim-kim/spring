package com.ssafy.test.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ssafy.test.util.DBUtil;

public class UserDaoImpl implements UserDao{
	
	static UserDaoImpl instance = new UserDaoImpl();
	
	public static UserDaoImpl getInstance() {
		return instance; 
	}

	@Override
	public int login(String id, String password) {
		
		int result = 0; 
		
		try {
			
			Connection conn =  DBUtil.getInstance().getConnection();
			PreparedStatement pstmt = conn.prepareStatement("select * from user");
			ResultSet rs = pstmt.executeQuery(); 
			
			while(rs.next()) {
				String rs_id = rs.getString("id");
				String rs_password = rs.getString("pw");

				if(rs_id == id && rs_password == password) {
					result = 1; 
					return result; 
				}
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return result ;
	}

}
