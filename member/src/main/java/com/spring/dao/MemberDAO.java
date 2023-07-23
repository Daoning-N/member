//interface 부분: 사용할 메서드만 선언
package com.spring.dao;

import java.util.List;

import com.spring.domain.MemberVO;

public interface MemberDAO {
	//throws Exception: 오류 방지,Impl파트에서 오류가 뜨면 작성(Impl 오류 안뜨면 작성 안해도 됨)
	//목록(모든 자료를 읽어옴)
	public List<MemberVO> memberList();
	//입력(레코드를 테이블에 저장)
	public void insertMember(MemberVO vo);
	//상세보기(해당 레코드를 읽어옴)
	public MemberVO viewMember(String userId);
	//수정(해당 레코드를 수정)
	public void updateMember(MemberVO vo) ;
	//삭제(해당 자료를 삭제)
	public void deleteMember(String userId);
}
