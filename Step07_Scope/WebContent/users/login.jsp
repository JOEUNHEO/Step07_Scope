<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/login.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	//유효한 정보인지 여부
	boolean isValid = false;
	
	if(id.equals("gura") && pwd.equals("1234")){
		//세션 객체를 얻어와서
		HttpSession ses = request.getSession();
		//세션에 로그인 정보를 담는다. (웹브라우져를 닫기 전까지는 세션에 담긴 정보는 살아있다.)
		ses.setAttribute("id", id);//로그인 정보는 request에 담는 것이 아니라, session 에 담아야 한다.
		//request 에 담으면, 페이지를 이동할 때마다, 로그인을 해야한다.(응답한 후에 request에 담긴 정보가 사라지기 때문)
		
		isValid = true;
	}
%>
<%if(isValid){ %>
	<p> <strong><%=id %></strong> 회원님 로그인 되었습니다.</p>	
<%}else{ %>
	<p> 아이디 혹은 비밀번호가 틀려요!</p>
<%}%>
</body>
</html>