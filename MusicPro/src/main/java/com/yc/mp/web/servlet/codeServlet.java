package com.yc.mp.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.mp.util.sendMobileCode;

@WebServlet("/send/*")
public class codeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public codeServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tel=request.getParameter("tel");
		sendMobileCode sc = new sendMobileCode();
		sc.sendMobileCoder(tel);
		PrintWriter out = response.getWriter();
		out.println(sc.getCode());
		//out.println("9527");
		out.flush();
		out.close();
	}

}
