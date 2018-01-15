<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>帐号登录</title>
    <link rel="stylesheet" href="statics/css/register.css" type="text/css"/>
    <script type="text/javascript" src="statics/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" language="javascript">
        function login(){
            var u=document.getElementById("userName").value;
            if(u.validity.patternMismatch){
                u.setCustomValidity("以字母开头的4~16个字符");
            }else {u.setCustomValidity("");}
            var pwd=document.getElementById("userPassword");
            if(pwd.validity.patternMismatch){
                pwd.setCustomValidity("密码长度为6~20个字符");
            }else {pwd.setCustomValidity("");}
        }
    </script>
</head>

<body>
<div id="fr1">
    <h1 class="hr_1">帐号登录</h1>
    <form name="login1" action="123.html" method="post">
        <input type="hidden" id="gps" name="gps" value=""/>

        <dl>
            <dd><input id="userName" name="userName" tabindex="1" placeholder="输入字母开头的用户名" pattern="^[a-zA-Z][a-zA-Z0-9]{3,15}" class="" type="text" required
                       value=""/><span></span></dd>
        </dl>
        <dl>
            <dd><input id="userPassword" name="userPassword" tabindex="2" placeholder="输入密码，不少于6个字符" pattern="[a-zA-Z0-9]{6,20}" class="" type="password" required
                       value=""/><span></span></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd><input id="button" tabindex="3" name="" type="submit" class="btn" value="登录" onclick="login()"/></dd>
        </dl>
    </form>
</div>
</body>
</html>