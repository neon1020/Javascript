package ajax;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberJoinProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberJoinProAction");
		
		ActionForward forward = null;
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email1") + "@" + request.getParameter("email2");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		MemberBean member = new MemberBean();
		member.setName(name);
		member.setGender(gender);
		member.setEmail(email);
		member.setId(id);
		member.setPasswd(passwd);
		
		// System.out.println(member);
		
		// MemberJoinProService - registMember() 메소드 호출하여 회원 등록 작업 요청
		// => 파라미터 : MemberBean 객체   리턴타입 : boolean(isRegistSuccess)
		MemberJoinProService service = new MemberJoinProService();
		boolean isRegistSuccess = service.registMember(member);
		
		if(!isRegistSuccess) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원가입 실패')");
			out.println("history.back()");
			out.println("</script>");
		} else {
			// 회원 인증 메일 발송을 위한 MemberSendAuthMail.me 페이지로 포워딩
			// => 파라미터 : 가입자의 아이디, 이메일 주소 함께 전송
			forward = new ActionForward();
			// forward.setPath("MemberSendAuthMail.me?id=" + id + "&email=" + email);
			forward.setPath("MemberJoinResult.me?id=" + id + "&email=" + email);
			forward.setRedirect(true);
		}
		return forward;
	}

}
