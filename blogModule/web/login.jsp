<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>帐号登录</title>
    <link rel="stylesheet" href="statics/css/login.css" type="text/css"/>
    <script type="text/javascript" src="statics/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">



        function login(){
            var userName=document.getElementById(userName).nodeValue;
            alert(userName)

        }





    </script>
</head>

<body>
<div id="login">
    <h3>帐号登录</h3>
    <form action="loginCheck" method="post">
        <input type="hidden" id="gps" name="gps" value=""/>
        <p><input id="userName" name="userName" tabindex="1" placeholder="输入用户名" class="user_name" type="text"
                  value=""/></p>
        <p><input id="userPassword" name="userPassword" tabindex="2" placeholder="输入密码" class="user_password"
                  type="password" value="" autocomplete="off"/></p>

        <p><input id="button" tabindex="3" class="user_password"
                  type="submit" value="登录" onclick="javascript:login();"/></p>
    </form>
</div>
</body>
</html>