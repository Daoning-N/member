package com.spring.service;

import java.util.List;

import com.spring.domain.MemberVO;

public interface MemberService {
		//목록(모든 자료를 읽어옴)
		public List<MemberVO> memberList();
		public void insertMember(MemberVO vo);
		//상세보기(해당 레코드를 읽어옴)
		public MemberVO viewMember(String userId);
		//수정(해당 레코드를 수정) 
		public void updateMember(MemberVO vo);
		//삭제(해당 자료를 삭제)
		public void deleteMember(String userId);
}
