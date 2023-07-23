package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.dao.MemberDAO;
import com.spring.dao.MemberDAOImpl;
import com.spring.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDAO memberDao;
	//MemberDAO 오류 생기면 MemberDAOImpl로 변경
	
	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return memberDao.memberList();
	}

	@Override
	public void insertMember(MemberVO vo) {
		//주입한 내용을 확인해서 작업
		memberDao.insertMember(vo); //DAO에 insertMember을 이용해서 작업
	}

	@Override
	public MemberVO viewMember(String userId) {
		return memberDao.viewMember(userId); //DAO에 상세 메서드
	}

	@Override
	public void updateMember(MemberVO vo) {
		memberDao.updateMember(vo);

	}

	@Override
	public void deleteMember(String userId) {
		memberDao.deleteMember(userId);
	}

}
