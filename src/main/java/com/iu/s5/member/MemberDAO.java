package com.iu.s5.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s5.member.memberDAO.";

	public MemberDTO getIdCheck(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getIdCheck", memberDTO);
	}
	
	public int setJoin(MemberDTO memberDTO) throws Exception {
		return 0;
	}
	
	public MemberDTO getLogin(MemberDTO memberDTO) throws Exception {
		return null;
	}
	
	public int setDelete(MemberDTO memberDTO) throws Exception {
		return 0;
	}
	
	public int setUpdate(MemberDTO memberDTO) throws Exception {
		return 0;
	}
}
