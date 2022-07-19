package org.tukorea.myweb.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.tukorea.myweb.domain.StudentVO;
import org.tukorea.myweb.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value="/member")
public class MemberController {
	
	@Autowired
    private MemberService memberService;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
    
	@RequestMapping(value = {"/register"}, method = RequestMethod.GET)
	public String createMemberGet() throws Exception {
		logger.info(" /register URL GET method called. then forward member_register.jsp.");
		return "member/member_register";
	}
	
    
    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
	public String createMemberPost( @ModelAttribute("student") StudentVO vo) throws Exception {
		memberService.addMember(vo);
		logger.info(vo.toString());
		logger.info(" /register URL POST method called. then createMember method executed.");
		return "redirect:/member/login";
	}
	
            
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modifyMemberGet(@RequestParam("id") String id, Model model) throws Exception {
    	StudentVO student = memberService.readMember(id);
    	
		logger.info(" /modify?id=? URL GET method called. then forward member_modify.jsp.");
        model.addAttribute("student", student);
        return "member/member_modify";
    }
    
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String modifyMemberPost(@ModelAttribute("student") StudentVO vo) throws Exception {
    	memberService.updateMember(vo);
		logger.info(vo.toString());
		logger.info(" /modify?id=? URL POST method called. then modifyMemberPost method executed.");
        return "redirect:/member/mypage";
    }
    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
	public String createLogin() throws Exception {
		logger.info(" /login URL GET method called. then forward login.jsp.");
		return "member/login";
	}
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String submitLogin(StudentVO vo, HttpServletRequest req) throws Exception {
    		
    	HttpSession session = req.getSession();
    	StudentVO member = memberService.login(vo);

    	if (member == null) {
    		session.setAttribute("login", null);
    		return "redirect:/member/login";
    	}
    	else {
    		session.setAttribute("login", member);
    		return "redirect:/board/listPageSearch?num=1";
    	}		
    }
    //로그아웃
  	@RequestMapping(value="/logout",method=RequestMethod.GET)
  	public String getLogout(HttpSession session) throws Exception{
  		session.invalidate();
  		return "redirect:/";
  	}
  	//마이페이지
  	@RequestMapping(value="/mypage", method = RequestMethod.GET)
  	public void getMypage() throws Exception{	 	
  	}
  	//회원탈퇴
  	@RequestMapping(value="/withdrawal", method= RequestMethod.GET)
  	public void getWithdrawal() throws Exception{		
  	}
  	//회원탈퇴
  	@RequestMapping(value="/withdrawal", method= RequestMethod.POST)
  	public String submitWithdrawal(HttpSession session, StudentVO student, RedirectAttributes rttr) throws Exception{
  		
  		StudentVO member = (StudentVO)session.getAttribute("login");
  		
  		String origPass = member.getPasswd(); 
  		String inputPass = student.getPasswd();
  		
  		if(!(inputPass.equals(origPass))) {
  			rttr.addFlashAttribute("msg",false);
  			return "redirect:/member/withdrawal";
  		}
  		
  		memberService.withdrawal(member);
  		session.setAttribute("login", null);
  		
  		return "redirect:/";
  	}
    //
  	@RequestMapping(value="/modification", method= RequestMethod.GET)
  	public void getModification() throws Exception{		
  	}
  	@RequestMapping(value="/modification", method= RequestMethod.POST)
  	public String submitWithmodification(HttpSession session, StudentVO student, RedirectAttributes rttr) throws Exception{
  		
  		StudentVO member = (StudentVO)session.getAttribute("login");
  		
  		String origPass = member.getPasswd(); 
  		String inputPass = student.getPasswd();
  		String id = member.getId();
  		if(!(inputPass.equals(origPass))) {
  			rttr.addFlashAttribute("msg",false);
  			return "redirect:/member/modification";
  		}
  		rttr.addAttribute("id", id);	
  		
  		return "redirect:/member/modify";
  	}
}