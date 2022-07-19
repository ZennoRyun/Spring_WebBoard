package org.tukorea.myweb.persistence;

import org.apache.ibatis.session.SqlSession;
import org.tukorea.myweb.domain.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "org.tukorea.myweb.mapper.StudentMapper";

	public StudentVO read(String id) throws Exception {
	
		StudentVO vo = sqlSession.selectOne(namespace+".selectByid", id);
		return vo;   
	}
 
	
	public void add(StudentVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	public void update(StudentVO student) throws Exception {
		// TODO Auto-generated method stub
	    sqlSession.update(namespace + ".update", student);
	}
	//로그인
	@Override
	public StudentVO login(StudentVO student) throws Exception {
		return sqlSession.selectOne(namespace+".login", student);	
	}
	//회원 탈퇴
	@Override
	public void withdrawal(StudentVO student) throws Exception {
		sqlSession.delete(namespace+".withdrawal", student);		
	}

}
