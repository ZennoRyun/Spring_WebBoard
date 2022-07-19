package org.tukorea.myweb.service;

import org.tukorea.myweb.domain.StudentVO;
import org.tukorea.myweb.persistence.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	public StudentVO readMember(String id) throws Exception {
		return memberDAO.read(id);
	}
	
	public void addMember(StudentVO student) throws Exception {
		memberDAO.add(student);
	}
	
	public void updateMember(StudentVO student) throws Exception {
		memberDAO.update(student);
	}
	//로그인
	@Override
	public StudentVO login(StudentVO student) throws Exception {	
		return memberDAO.login(student);
	}
	@Override
	public void withdrawal(StudentVO student) throws Exception {
		memberDAO.withdrawal(student);	
	}
}
