package com.spring.member;

import javax.inject.Inject;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.MemberVO;
import com.spring.service.MemberService;

//회원관리 작업

@Controller
public class MemberController {
	@Inject
	MemberService memberService;
	
	@RequestMapping("/member/list") //접근은 '/member/list'
	public String memberList(Model model) {
		//서비스를 이용해서 작업
		List<MemberVO> list = memberService.memberList(); //DB조회
		model.addAttribute("list",list); //결과를 list로 전달
		
		return "member/member_list"; //연결페이지 'member/member_list.jsp'
		
	}
	
	//member_write 부분
	//member_list에서 member/write값을 받았을 때 등록페이지로 이동
	//단순 페이지 이동만 할 시 메서드(인수없음), 값을 받거나 전달이 필요하면 메서드(인수)
	@RequestMapping("/member/write")
	//모르겠다 싶으면 걍 String
	public String memberWrite() {
		return "member/member_write";
	}
	//member/insert부분
	//member_write에서 submit을 클릭했을 때 member/insert라는 값으로 처리 부분
	//form으로 전달 된 경우 @Model방식으로 저장, 일반 변수로 전달 될 경우 @Parameter방식으로 방식으로 개별변수 저장
	@RequestMapping("/member/insert")
	public String memberWrite(@ModelAttribute MemberVO vo) {
		//저장작업
		memberService.insertMember(vo);//서비스에 insertMember 이용해서 저장

		return "redirect:/member/list";
		// ㄴ redirect는 페이지가 아니고 메서드 위치
	}
	
	//목록에서 이름을 클릭했을 때
	@RequestMapping("/member/view")
	public String memberView(String userId, Model model) {
		//해당 id의 레코드를 읽어오는 작업
		model.addAttribute("dto", memberService.viewMember(userId));
		//ㄴ 아이디로 데이터베이스에서 조회를 한 결과를 dto라는 이름으로 페이지에 전달
		return "member/member_view"; //상세페이지로 이동
	}
	//상세페이지에서 수정버튼을 클릭했을 때
	@RequestMapping("member/update")
	public String memberUpdate(@ModelAttribute MemberVO vo) {
		//수정 된 내용을 저장하는 작업
		memberService.updateMember(vo);
		return "redirect:/member/list";//목록페이지로 이동
	}
	@RequestMapping("/member/delete")
	public String memberDelete(String userId) {
		memberService.deleteMember(userId);
		return "redirect:/member/list";
	}
}
