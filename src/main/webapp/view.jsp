<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.member.bean.MemberDAO, com.member.bean.MemberVO, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Data</title>
    <style>
        table {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<h1>All Data</h1>

<table>
    <thead>
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
    </tr>
    </thead>
    <tbody>
    <%
        MemberDAO memberDAO = new MemberDAO();
        List<MemberVO> dataList = memberDAO.getMemberList();
        for (MemberVO data : dataList) {
    %>
    <tr>
        <td><%= data.getSid() %></td>
        <td><%= data.getUsername() %></td>
        <td><%= data.getUserid() %></td>
        <td><%= data.getPassword() %></td>
        <td><%= data.getEmail() %></td>
        <td><%= data.getPhonenumber() %></td>
        <td><%= data.getBlogurl() %></td>
        <td><%= data.getPhoto() %></td>
        <td><%= data.getDetail() %></td>
        <td><%= data.getRegdate() %></td>
    </tr>
    <% } %>


    </tbody>
    <br/><a href="posts.jsp">Go to Posts</a>
</table>

</body>
</html>
