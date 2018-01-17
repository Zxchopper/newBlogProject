<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>帐号登录</title>
    <link rel="stylesheet" href="/statics/css/Login&Register.css" type="text/css"/>
    <script type="text/javascript" src="../../statics/js/jquery-1.8.3.min.js"></script>
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
<section id="fr1">
    <h1 class="hr_1">帐号登录</h1>
    <form name="login1" action="loginCheck" method="post">
        <input type="hidden" id="gps" name="gps" value=""/>

        <dl>
            <dt>&nbsp;</dt>
            <dd class="login_1"><input id="userName1" name="name" tabindex="1" placeholder="输入字母开头的用户名" pattern="^[a-zA-Z][a-zA-Z0-9]{3,15}" class="login" type="text" required
                                       value=""/><span></span></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd class="login_1"><input id="userPassword1" name="pwd" tabindex="2" placeholder="输入密码，不少于6个字符" pattern="[a-zA-Z0-9]{6,20}" class="login" type="password" required
                                       value=""/><span></span></dd>
        </dl>
        <dl>
            <dt>&nbsp;</dt>
            <dd id="button"><input tabindex="3" name="" type="image" src="/statics/img/login.jpg" class="btn" value="登录" onclick="login()"/></dd>
        </dl>
        <dl>
            <dt>  </dt>
            <dd id="forget"><a href="goRegister">没有账户？点击注册</a></dd>
        </dl>
    </form>
</section>
</body>
</html>