package org.tukorea.myweb.controller;

import java.util.List;
import javax.inject.Inject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.tukorea.myweb.domain.BoardVO;
import org.tukorea.myweb.domain.Page;
import org.tukorea.myweb.domain.ReplyVO;
import org.tukorea.myweb.service.BoardService;
import org.tukorea.myweb.service.ReplyService;

@Controller
@RequestMapping("/board")
public class BoardController {

	 @Autowired
	 private BoardService boardService;
	 
	 @Inject
	 private ReplyService replyService;
	 
	// 게시물 작성
	 @RequestMapping(value = "/write", method = RequestMethod.GET)
	 public void getWirte() throws Exception {
	    
	 }
	// 게시물 작성
	 @RequestMapping(value = "/write", method = RequestMethod.POST)
	 public String postWirte(BoardVO vo) throws Exception {
		 boardService.write(vo);
	   
		 return "redirect:/board/listPageSearch?num=1";
	 }
	// 게시물 조회
	 @RequestMapping(value = "/view", method = RequestMethod.GET)
	 public void getView(@RequestParam("bno") int bno, Model model) throws Exception {
		 BoardVO vo = boardService.view(bno);
		 model.addAttribute("view", vo);
		 
		 // 댓글 조회
		 List<ReplyVO> reply = null;
		 reply = replyService.list(bno);
		 model.addAttribute("reply", reply);
	 }
	// 게시물 수정
	 @RequestMapping(value = "/modify", method = RequestMethod.GET)
	 public void getModify(@RequestParam("bno") int bno, Model model) throws Exception {
		 BoardVO vo = boardService.view(bno);
		 model.addAttribute("view", vo);
	 }
	// 게시물 수정
	 @RequestMapping(value = "/modify", method = RequestMethod.POST)
	 public String postModify(BoardVO vo) throws Exception {
		 boardService.modify(vo);
		 return "redirect:/board/view?bno=" + vo.getBno();
	 }
	// 게시물 삭제
	 @RequestMapping(value = "/delete", method = RequestMethod.GET)
	 public String getDelete(@RequestParam("bno") int bno) throws Exception {
		 boardService.delete(bno);
		 return "redirect:/board/listPageSearch?num=1";
	 }
	 // 게시물 목록 + 페이징 추가 + 검색
	 @RequestMapping(value = "/listPageSearch", method = RequestMethod.GET)
	 public void getListPageSearch(Model model, @RequestParam("num") int num, 
		@RequestParam(value = "searchType",required = false, defaultValue = "title") String searchType,
		@RequestParam(value = "keyword",required = false, defaultValue = "") String keyword
	   ) throws Exception {	  
		  Page page = new Page();
		  page.setNum(num);
		  page.setCount(boardService.searchCount(searchType, keyword));
		  page.setSearchType(searchType);
		  page.setKeyword(keyword);
		  
		  List<BoardVO> list = null; 
		  list = boardService.listPageSearch(page.getDisplayPost(), page.getPostNum(), searchType, keyword);
		  
		  model.addAttribute("list", list);
		  model.addAttribute("page", page);
		  model.addAttribute("select", num);
	 }
}