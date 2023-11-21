<%@ page import="com.crud.bean.BoardVO" %>
<%@ page import="com.crud.dao.BoardDAO" %><%--
  Created by IntelliJ IDEA.
  User: kimdong-gyu
  Date: 11/21/23
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>

<%
  BoardDAO boardDAO = new BoardDAO();
  String id=request.getParameter("id");
  BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
  System.out.println(u.getModifiedDate());
%>

<%--<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>--%>
<td>${u.getSeq()}</td>
<table>
  <tr><td>Title:</td><td><span><%= u.getTitle()%></span></td></tr>
  <tr><td>Writer:</td><td><span><%= u.getWriter()%></span></td></tr>
  <tr><td>Content:</td><td><span><%= u.getContent()%></span></td></tr>
  <tr><td>Category:</td><td><span><%= u.getCategory()%></span></td></tr>
  <tr><td>Modified Date:</td><td><span><%= u.getModifiedDate()%></span></td></tr>
</table>

<input type="button" value="Cancel" onclick="history.back()"/>


</body>
</html>
