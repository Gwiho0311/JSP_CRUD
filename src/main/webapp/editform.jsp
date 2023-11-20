<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.member.bean.MemberDAO, com.member.bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<%
    MemberDAO memberDAO = new MemberDAO();
    String id=request.getParameter("id");
    MemberVO u=memberDAO.getMember(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
    <input type="hidden" name="sid" value="<%=u.getSid() %>"/>
    <table>
        <tr><td>UserName:</td><td><input type="text" name="username" value="<%=u.getUsername() %>"/></td></tr>
        <tr><td>UserId:</td><td><input type="text" name="userid" value="<%=u.getUserid() %>"/></td></tr>
        <tr><td>Password:</td><td><textarea type="text" name="password"><%=u.getPassword() %></textarea></td></tr>
        <tr><td>Email:</td><td><textarea type="text" name="email"><%=u.getEmail() %></textarea></td></tr>
        <tr><td>Phonenumber:</td><td><textarea type="text" name="phonenumber"><%=u.getPhonenumber() %></textarea></td></tr>
        <tr><td>Blogurl:</td><td><textarea type="text" name="blogurl"><%=u.getBlogurl() %></textarea></td></tr>
        <tr><td>Photo:</td><td><textarea type="text" name="photo"><%=u.getPhoto() %></textarea></td></tr>
        <tr><td>Detail:</td><td><textarea type="text" name="detail"><%=u.getDetail() %></textarea></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form>

</body>
</html>
