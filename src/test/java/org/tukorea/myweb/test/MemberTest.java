package org.tukorea.myweb.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.tukorea.myweb.domain.StudentVO;
import org.tukorea.myweb.service.MemberService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class MemberTest {
	
	@Autowired
	MemberService memberService;
	
	// 생성 테스트
	@Test
	public void testAddMember( ) throws Exception {
		String strID = "Test";
		StudentVO vo = new StudentVO(); 
		vo.setId(strID); 
		vo.setPasswd(strID);  
		vo.setUsername(strID); 
		vo.setSnum(strID);
		vo.setDepart(strID);
		vo.setMobile(strID);
		vo.setEmail(strID);
		memberService.addMember(vo);
		StudentVO member = memberService.readMember("Test");
		System.out.println("------------------------------------------------------------------------------------------------");
		System.out.println(member);
		System.out.println("------------------------------------------------------------------------------------------------");
	}
	// 수정 테스트
	//@Test
	public void testUpdateMember( ) throws Exception {
		String strID = "Test";
		StudentVO member = memberService.readMember(strID);
		strID = "TestTwo";
		member.setPasswd(strID);  
		member.setUsername(strID); 
		member.setSnum(strID);
		member.setDepart(strID);
		member.setMobile(strID);
		member.setEmail(strID);
		memberService.updateMember(member);
		strID = "Test";
		member = memberService.readMember(strID);
		System.out.println("------------------------------------------------------------------------------------------------");
		System.out.println(member);
		System.out.println("------------------------------------------------------------------------------------------------");
	}
	// 삭제 테스트
	//@Test
	public void testDeleteMember( ) throws Exception {
		String strID = "Test";
		StudentVO member = memberService.readMember(strID);
		memberService.withdrawal(member);
		member = memberService.readMember(strID);
		System.out.println("------------------------------------------------------------------------------------------------");
		System.out.println(member);
		System.out.println("------------------------------------------------------------------------------------------------");
	}
}