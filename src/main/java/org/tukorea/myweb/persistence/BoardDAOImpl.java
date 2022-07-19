package org.tukorea.myweb.persistence;

import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.tukorea.myweb.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sql;
	private static String namespace = "org.tukorea.myweb.mapper.BoardMapper";
	// 게시물 작성
	@Override
	public void write(BoardVO vo) throws Exception {
		sql.insert(namespace + ".write", vo);
	}
	// 게시물 조회
	public BoardVO view(int bno) throws Exception {
		return sql.selectOne(namespace + ".view", bno);
	}
	// 게시물 조회수 증가
	public void updateViewCnt(int bno) throws Exception {
		sql.update(namespace+ ".updateViewCnt", bno);
	}
	// 게시물 수정
	@Override
	public void modify(BoardVO vo) throws Exception {
		sql.update(namespace + ".modify", vo);
	}
	// 게시물 삭제
	public void delete(int bno) throws Exception {
		sql.delete(namespace + ".delete", bno);
	}
	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
		return sql.selectOne(namespace + ".count"); 
	}
	// 게시물 목록 + 페이징 + 검색
	 @Override
	 public List<BoardVO> listPageSearch(int displayPost, int postNum, String searchType, String keyword) throws Exception {
		 HashMap<String, Object> data = new HashMap<String, Object>();
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("searchType", searchType);
		 data.put("keyword", keyword);
		 return sql.selectList(namespace + ".listPageSearch", data);
	 }
	// 게시물 총 갯수 + 검색 적용
	 @Override
	 public int searchCount(String searchType, String keyword) throws Exception {
		 HashMap data = new HashMap();
		 data.put("searchType", searchType);
		 data.put("keyword", keyword);
		 return sql.selectOne(namespace + ".searchCount", data); 
	 }
}
