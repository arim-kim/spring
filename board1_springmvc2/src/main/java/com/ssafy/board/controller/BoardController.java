package com.ssafy.board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.board.model.BoardDto;
import com.ssafy.board.model.service.BoardService;
import com.ssafy.member.model.MemberDto;
import com.ssafy.util.PageNavigation;

@Controller
@RequestMapping("article")
public class BoardController {

	private final Logger logger = LoggerFactory.getLogger(BoardController.class);

	private final BoardService boardService;

	public BoardController(BoardService boardService) {
		super();
		this.boardService = boardService;
	}

	@GetMapping("/write")
	public String write() {
		return "board/write";
	}

	@PostMapping("/write")
	public String write(BoardDto boardDto, HttpSession session) throws Exception {
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		boardDto.setUserId(memberDto.getUserId());
		logger.debug("write boardDto : {}", boardDto);
		boardService.writeArticle(boardDto);
		return "redirect:/article/list?pgno=1";
	}

	@GetMapping("/list")
	// request -> map으로 받음
	public ModelAndView list(@RequestParam Map<String, String> map) throws Exception {
		List<BoardDto> list = boardService.listArticle(map);
		PageNavigation pagenav = boardService.makePageNavigation(map);
		ModelAndView mav = new ModelAndView();

		mav.addObject("articles", list);
		mav.addObject("navigation", pagenav);
		mav.addObject("pgno", map.get("pgno"));
		mav.addObject("key", map.get("key"));
		mav.addObject("word", map.get("word"));
		mav.setViewName("board/list");
		
		return mav;
	}
}
