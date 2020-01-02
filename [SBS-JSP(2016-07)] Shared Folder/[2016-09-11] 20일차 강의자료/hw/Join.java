

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Join
 */
@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pwch = request.getParameter("pwch");
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String[] hobby = request.getParameterValues("hobby");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println(" <head>");
		out.println("  <title>Join</title>");
		out.println(" </head>");
		out.println(" <body>");
		if(pw.equals(pwch)){
			out.println("<h2>�ۼ��Ͻ� ������ �Ʒ��� �����ϴ�.</h2><br/>");
			out.println("�̸� : " + name + "<br/>");
			out.println("���� : " + gender + "<br/>");
			out.println("���̵� : " + id + "<br/>");
			out.println("�ּ� : " + addr + "<br/>");
			out.println("��ȭ��ȣ : " + phone + "<br/>");
			out.println("�̸����ּ� : " + email + "<br/>");
			if(hobby == null)
				out.println("[������ ��̰� �����ϴ�.]");
			else {
				out.println("	<table border=\"1\">");
			for(int i = 0; i < hobby.length; i++){
				out.println(" <tr>");
				out.println("	<td width=\"80\" align=\" center\">");
				out.println(hobby[i]);
				out.println("	</td>");
				out.println(" </tr>");
				}
			}
		}
		out.println("	</table>");
		out.println("</body>");
		out.println("</html>");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
