package org.tukorea.myweb.persistence;

import java.util.List;

import org.tukorea.myweb.domain.StudentVO;

public interface MemberDAO {

	public void add(StudentVO student) throws Exception;
	public StudentVO read(String id) throws Exception;
	public void update(StudentVO student) throws Exception;
	public StudentVO login(StudentVO student) throws Exception;
	//회원탈퇴
	public void withdrawal(StudentVO student) throws Exception; 
}
