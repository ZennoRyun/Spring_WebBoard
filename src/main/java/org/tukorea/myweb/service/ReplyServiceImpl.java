package org.tukorea.myweb.service;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import org.tukorea.myweb.domain.ReplyVO;
import org.tukorea.myweb.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Inject
	private ReplyDAO dao;

	// 댓글 조회
	@Override
	public List<ReplyVO> list(int bno) throws Exception {
	    return dao.list(bno);
	}

	@Override
	public void write(ReplyVO vo) throws Exception {
	    dao.write(vo);
	}

	@Override
	public void modify(ReplyVO vo) throws Exception {
	    dao.modify(vo);
	}

	@Override
	public void delete(ReplyVO vo) throws Exception {
	    dao.delete(vo);
	}
}
