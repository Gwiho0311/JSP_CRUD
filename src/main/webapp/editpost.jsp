<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.member.bean.MemberDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.member.bean.MemberVO" />
<jsp:setProperty property="*" name="u"/>

<%
    MemberDAO memberDAO = new MemberDAO();
    int i = memberDAO.updateMember(u);
    String msg = "데이터 수정 성공 !";
    if(i == 0) msg = "[에러] 데이터 수정 ";

    response.sendRedirect("posts.jsp");
%>
