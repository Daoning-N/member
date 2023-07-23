package com.spring.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	SqlSession sqlSession;
	
	/*
	 *sqlSession.selectList 목록 레코드 읽기
	 *sqlSession.selectOne 1개의 레코드 읽기
	 *sqlSession.insert 삽입
	 *sqlSession.update 수정
	 *sqlSession.delete 삭제
	 */
	
	@Override
	public List<MemberVO> memberList(){
		//mybatis의 이름이 member에 있는 memberList로 조회
		return sqlSession.selectList("member.memberList");
	}

	@Override
	public void insertMember(MemberVO vo) {
		sqlSession.insert("member.memberInsert", vo); 
		//ㄴ(mapper 이름을 지정(Mapper id와 이름이 동일해야 함), vo(보낼 값을 지정)

	}

	@Override
	public MemberVO viewMember(String userId) {
		return sqlSession.selectOne("member.memberView", userId);
	}

	@Override
	public void updateMember(MemberVO vo) {
		sqlSession.update("member.memberUpdate", vo);
	}

	@Override
	public void deleteMember(String userId) {
		sqlSession.delete("member.memberDelete", userId);
	}

}
