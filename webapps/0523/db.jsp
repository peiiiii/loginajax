<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>

<%!
  String user = "4104029036";
  String pwd = "Ss4104029036!";
  String db = "4104029036";
  String url = "jdbc:mysql://140.120.49.205/" + db + "?useUnicode=true&characterEncoding=utf-8";
  //建立一個聯結物件
  Connection con;
   //建立PreparedStatement物件
   PreparedStatement pstmt = null; %>

<% try{
    //定義驅動程式與資料來源之間的連結
    Class.forName("org.gjt.mm.mysql.Driver").newInstance();
    //建立一個聯結物件
    con = DriverManager.getConnection(url,user,pwd);

  }catch(SQLException sqle){
    out.println("SQL Exception : " + sqle);
  } %>
