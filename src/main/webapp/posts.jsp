<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.member.bean.MemberDAO, com.member.bean.MemberVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        /* 스타일 시트 */
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deletepost.jsp?id=' + id;
        }
    </script>
</head>
<body>
<h1>자유게시판</h1>
<%
    MemberDAO memberDAO = new MemberDAO();
    List<MemberVO> list = memberDAO.getMemberList();

    request.setAttribute("list",list);
%>
<table id="list" width="90%">
    <tr>
        <th>Sid</th>
        <th>UserName</th>
        <th>UserId</th>
        <th>Password</th>
        <th>Email</th>
        <th>Phonenumber</th>
        <th>Blogurl</th>
        <th>Photo</th>
        <th>Detail</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.sid}</td>
            <td>${u.username}</td>
            <td>${u.userid}</td>
            <td>${u.password}</td>
            <td>${u.email}</td>
            <td>${u.phonenumber}</td>
            <td>${u.blogurl}</td>
            <td>${u.photo}</td>
            <td>${u.detail}</td>
            <td>${u.regdate}</td>
            <td><a href="editform.jsp?id=${u.sid}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.sid}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="addpostform.jsp">Add New Post</a>
</body>
</html>
