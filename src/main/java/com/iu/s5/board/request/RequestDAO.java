package com.iu.s5.board.request;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.s5.board.BoardDAO;
import com.iu.s5.board.BoardDTO;
import com.iu.s5.board.BoardFileDTO;
import com.iu.s5.board.CommentsDTO;
import com.iu.s5.util.Pager;

@Repository
public class RequestDAO implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.board.request.RequestDAO.";
	
	
	public String getCategoryName(RequestDTO requestDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getCategoryName", requestDTO);
	}
	
	
	public int setFileDelete(BoardFileDTO boardFileDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", boardFileDTO);
	}
	
	public Long getCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}
	
	public int setAcceptUpdate(RequestDTO requestDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setAcceptUpdate", requestDTO);
	}
	
	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSelect", boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", boardDTO);
	}

	@Override
	public int setHitsUpdate(BoardDTO boardDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setHitsUpdate", boardDTO);
	}

	@Override
	public int setFile(BoardFileDTO boardFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setFile", boardFileDTO);
	}

	@Override
	public List<BoardFileDTO> getFile(BoardDTO boardDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getFile", boardDTO);
	}

	@Override
	public int setComment(CommentsDTO commentsDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setComment", commentsDTO);
	}

	@Override
	public List<CommentsDTO> getCommentList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getCommentList", map);
	}

	@Override
	public int setCommentDelete(CommentsDTO commentsDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setCommentDelete", commentsDTO);
	}

	@Override
	public int setCommentUpdate(CommentsDTO commentsDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setCommentUpdate", commentsDTO);
	}

	@Override
	public Long getCommentCount(CommentsDTO commentsDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getCommentCount", commentsDTO);
	}

	
	
	
}
