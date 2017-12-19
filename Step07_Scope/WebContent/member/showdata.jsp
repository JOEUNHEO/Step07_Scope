<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/showdata.jsp</title>
</head>
<body>
<%
	//request 영역에 담긴 데이터를 읽어온다.
	MemberDto dto = (MemberDto)request.getAttribute("dto");//request에 담아 있는 데이터는 응답할 때까지 살아있다.(1회성 데이터)
%>
<p>번호 : <strong><%=dto.getNum() %></strong></p>
<p>이름 : <strong><%=dto.getName() %></strong></p>
<p>주소 : <strong><%=dto.getAddr() %></strong></p>
</body>
</html>