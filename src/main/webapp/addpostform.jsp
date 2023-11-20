<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addpost.jsp" method="post">
    <table>
        <tr><td>UserName:</td><td><input type="text" name="username"/></td></tr>
        <tr><td>UserId:</td><td><input type="text" name="userid"/></td></tr>
        <tr><td>Password:</td><td><textarea type="text" name="password"></textarea></td></tr>
        <tr><td>Email:</td><td><textarea type="text" name="email"></textarea></td></tr>
        <tr><td>Phonenumber:</td><td><textarea type="text" name="phonenumber"></textarea></td></tr>
        <tr><td>Blogurl:</td><td><textarea type="text" name="blogurl"></textarea></td></tr>
        <tr><td>Photo:</td><td><textarea type="text" name="photo"></textarea></td></tr>
        <tr><td>Detail:</td><td><textarea type="text" name="detail"></textarea></td></tr>
        <tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
    </table>
</form>

</body>
</html>