<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" href="statics/css/register.css" type="text/css"/>
    <script type="text/javascript" src="statics/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">



    </script>
</head>
<body>

<section id="register">
    <h1 class="hr_1">新用户注册</h1>
    <form action="" method="post">

        <dl>
            <dt><label for="email">邮箱</label></dt>
            <dd><input id="email" name="email" tabindex="1" placeholder="需要通过邮件激活帐户" class="" type="email" required
                       value=""/><span></span></dd>
        </dl>
        <dl>
            <dt><label for="userName">登录名称</label></dt>
            <dd><input id="userName" name="userName" tabindex="2" placeholder="登录用户名，不少于4个字符" class="" type="text" pattern="^[a-zA-Z][a-zA-Z0-9]{4,16}" required
                       value=""/><span></span></dd>
        </dl>
        <dl>
            <dt><label for="userPassword">登录密码</label></dt>
            <dd><input id="userPassword" name="userPassword" tabindex="2" placeholder="至少6位，必须包含字母、数字、特殊字符" class=""
                       type="password" pattern="[a-zA-Z0-9]{6,20}" required value="" autocomplete="off"/><span></span></dd>
        </dl>
        <dl>
            <dt><label for="ConfirmPassword">确认密码</label></dt>
            <dd><input id="ConfirmPassword" name="ConfirmPassword" tabindex="3" placeholder="再次输入密码，要求与上面密码相同" class=""
                       type="password" value="" autocomplete="off"/><span></span></dd>
        </dl>
        <dl>
            <dt><label for="name">显示名称</label></dt>
            <dd><input id="name" name="name" tabindex="4" placeholder="即昵称，不少于2个字符" class=""
                       type="password" value="" autocomplete="off" required/></dd>
        </dl>

        <dl>
            <dt>&nbsp;</dt>
            <dd><input name="" type="image" src="statics/img/register.jpg" class="btn" /></dd>
        </dl>
</form>
</section>

</body>
</html>