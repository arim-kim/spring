package com.mycom.enjoytrip.board.service;

import java.util.List;

import com.mycom.enjoytrip.board.dto.BoardDto;

public interface BoardService {

	int registerArticle(BoardDto boardDto);

	List<BoardDto> searchListAll(int limit, int offset);

	List<BoardDto> searchListBySubject(String subject);

	void modifyArticle(BoardDto boardDto);

	void deleteArticle(int no);

	List<BoardDto> searchByLocId(int i);

	List<BoardDto> searchMyBoard(String id, int limit, int offset);

	BoardDto getArticle(int articleNo);

	int articleListTotalCnt();

	int articleListUserIdTotalCnt(String userId);

	List<BoardDto> articleListSearchWord(int limit, int offset, String searchWord);

}
