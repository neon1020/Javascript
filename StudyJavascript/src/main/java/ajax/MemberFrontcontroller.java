package ajax;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.me")
public class MemberFrontcontroller extends HttpServlet {
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MemberFrontcontroller");
		
		request.setCharacterEncoding("UTF-8");
		
		// 공통으로 사용할 변수 선언
		Action action = null;
		ActionForward forward = null;
		
		String command = request.getServletPath();
		System.out.println("command : " + command);
		
		if(command.equals("/MemberJoinForm.me")) {
			
			forward = new ActionForward();
			forward.setPath("1013_ajax/test2_join.jsp");
			forward.setRedirect(false);
			
		} else if(command.equals("/MemberJoinPro.me")) {
			
			action = new MemberJoinProAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}  else if(command.equals("/MemberJoinResult.me")) {
			forward = new ActionForward();
			forward.setPath("1013_ajax/test2_join_result.jsp");
			forward.setRedirect(false);
			
		}  else if(command.equals("/MemberSendAuthMail.me")) {
			
			action = new MemberSendAuthMailAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} 
		
		// ----------------------------------------------------------------------------------------------------------------------
		
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
