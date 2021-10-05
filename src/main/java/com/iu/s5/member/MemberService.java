package com.iu.s5.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public MemberDTO getIdCheck(MemberDTO memberDTO) throws Exception {
		return memberDAO.getIdCheck(memberDTO);
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
