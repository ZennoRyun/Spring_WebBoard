package org.tukorea.myweb.controller;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.tukorea.myweb.domain.ReplyVO;
import org.tukorea.myweb.service.ReplyService;

@Controller
@RequestMapping("/reply")
public class ReplyController {
	@Inject
	private ReplyService replyService;
	
	// 댓글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String posttWirte(ReplyVO vo) throws Exception {
	    
	    replyService.write(vo);
	    
	    return "redirect:/board/view?bno=" + vo.getBno();
	}
}
