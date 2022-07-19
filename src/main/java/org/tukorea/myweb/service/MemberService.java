package org.tukorea.myweb.service;

import java.util.List;

import org.tukorea.myweb.domain.StudentVO;

public interface MemberService {
	
	public StudentVO readMember(String id) throws Exception;
	public void addMember(StudentVO student) throws Exception; 
	public void updateMember(StudentVO student) throws Exception;
	public StudentVO login(StudentVO student) throws Exception;
	//회원 탈퇴
	public void withdrawal(StudentVO student)throws Exception;

}
