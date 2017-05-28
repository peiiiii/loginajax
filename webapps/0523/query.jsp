<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="db.jsp"%>
<%
  String account = request.getParameter("account");
  if(account != ""){
  String sql = "select * from Member where account ='" + account + "'";
  pstmt = con.prepareStatement(sql);
  ResultSet rs = pstmt.executeQuery();
  if(rs.next()){ %>
  <font color="red">
  <%
    out.println("此帳號已被註冊");
  } else {
    out.println("此帳號可使用");
  }}else{ %>
  <font color="red">
<%
out.println("帳號不可為空白");}
%>
