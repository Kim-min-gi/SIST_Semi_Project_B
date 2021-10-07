package com.iu.s5.board.comments;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommentsDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.board.comments.CommentsDAO.";
	
	public int setComment(CommentsDTO commentsDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setComment", commentsDTO);
	}
	
	public List<CommentsDTO> getCommentList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getCommentList", map);
	}
	
	public int setCommentDelete(CommentsDTO commentsDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setCommentDelete", commentsDTO);
	}
	
	public int setCommentUpdate(CommentsDTO commentsDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setCommentUpdate", commentsDTO);
	}
	
	public Long getCommentCount(CommentsDTO commentsDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getCommentCount", commentsDTO);
	}
}
