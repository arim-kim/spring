package com.controller.controller.dto;

import java.security.MessageDigest;
import java.security.SecureRandom;

public class UserDto {
	private static final int SALT_SIZE = 16;

	private String userId;
	private String userEmail;
	private String userName;
	private String userPassword;
	private String SALT;
	

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getSALT() {
		return SALT;
	}

	public void setSALT(String sALT) {
		SALT = sALT;
	}

	public static int getSaltSize() {
		return SALT_SIZE;
	}

	@Override
	public String toString() {
		return "UserDto [userId=" + userId + ", userEmail=" + userEmail + ", userName=" + userName + ", userPassword="
				+ userPassword + ", SALT=" + SALT + "]";
	}

	public UserDto(String userId, String userEmail, String userName, String userPassword, String sALT) {
		super();
		this.userId = userId;
		this.userEmail = userEmail;
		this.userName = userName;
		this.userPassword = userPassword;
		SALT = sALT;
	}

	// SALT 값 생성
	public static String makeSALT() {
		SecureRandom rnd = new SecureRandom();
		byte[] temp = new byte[SALT_SIZE];
		rnd.nextBytes(temp);

		return Byte_to_String(temp);
	}

	// 비밀번호 해싱
	public static String Hashing(byte[] password, String Salt) throws Exception {

		MessageDigest md = MessageDigest.getInstance("SHA-256"); // SHA-256 해시함수를 사용

		// key-stretching
		for (int i = 0; i < 10000; i++) {
			String temp = Byte_to_String(password) + Salt; // 패스워드와 Salt 를 합쳐 새로운 문자열 생성
			md.update(temp.getBytes()); // temp 의 문자열을 해싱하여 md 에 저장해둔다
			password = md.digest(); // md 객체의 다이제스트를 얻어 password 를 갱신한다
		}

		return Byte_to_String(password);
	}

	// 바이트 값을 16진수로 변경해준다
	public static String Byte_to_String(byte[] temp) {
		StringBuilder sb = new StringBuilder();
		for (byte a : temp) {
			sb.append(String.format("%02x", a));
		}
		return sb.toString();
	}

}
