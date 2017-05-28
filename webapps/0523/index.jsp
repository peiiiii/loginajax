<%@ include file = "db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ch14_4_2.htm</title>
        <style type="text/css">
        input[type=text], select {
          width: 20%;
          padding: 12px 20px;
          margin: 8px ;
          display: inline-block;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
        }
        input[type=password], select {
          width: 20%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
        }

        input[type=submit] {
          width: 15%;
          background-color: #4CAF50;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          border-radius: 4px;
          cursor: pointer;
        }

        input[type=submit]:hover {
          background-color: #45a049;
        }

        div {
          border-radius: 5px;
          background-color: #f2f2f2;
          padding: 20px;
        }
            .box {
                width: 150px;
                background-color: #ffffff;
                border: 2px solid blue;
                padding: 10px;
                margin-top:5px;
            }
            .error{
              color: red;
              font-style: italic;
              font-weight: bold;
            }
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script language="JavaScript">
            $(document).ready(function(){
              $("input").blur(function(){
                  if ($(this).val().length == 0) {
                      $(this).addClass('error').after('<span class="error">不可是空的!</span>');
                  }
              });
              $("input").focus(function(){
                  $(this).removeClass('error').next('span').remove();
              });
              $("form").submit(function(){
                // 取得表單欄位值
                var passwdVal = $('#passwd').val();
                var accountVal = $('#account').val();
                // 使用HTTP POST方法送出Ajax請求
                $.post("query.jsp", { account : accountVal , password : passwdVal } ,
                function(data){
                    // 取出XML元素值
                    $("#result").html(data);
                });
                return false; //達到非同步效果
              });
            });
        </script>
    </head>
    <body>
      <div>
        <form>
            <center><label>帳號:</label>
            <input type="text" id="account" placeholder="請輸入帳號"><div id="result" class="box"></div>
        </br>
      <label>密碼:</label>
        <input type="password" id="passwd" placeholder="請輸入密碼"/></br>
        </br>
        <input type="submit" value="送出" ></br></center>
      </form>
    </div>
</body>
</html>
