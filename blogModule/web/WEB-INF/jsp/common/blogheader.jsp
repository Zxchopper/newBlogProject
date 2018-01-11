<%--
  Created by IntelliJ IDEA.
  User: younger
  Date: 2018/1/10
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java30博客网</title>
    <%--easyui必要--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery.easyui.min.js" ></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/themes/icon.css">
    <%--第二导航栏--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/hearder.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/second-nav.css" />
    <%--博客首页--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/blogindex.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/blogIndexImg.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/prefixfree.min.js" ></script>
</head>
<body>
    <div id="body">
        <div id="top-navbar">
            <img src="${pageContext.request.contextPath}/statics/themes/black/images/loading.gif" id="logo" />
            <ul class="top-ul">
                <li><a href="${pageContext.request.contextPath}/skip/toblog" >博客</a></li>
                <li><a href="${pageContext.request.contextPath}/skip/tobbs">论坛</a></li>
                <li><a href="">下载</a></li>
                <li><a href="">商城</a></li>
            </ul>
            <div class="top-searchbox">
                <input class="top-search" type="search"/>
                <a class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width: 30px;height: 30px;"></a>
            </div>

            <div class="top-writeblog">
                <!--<img class="top-writeblog-img" src="../themes/black/images/messager_icons.png"/>-->
            </div>
            <a class="top-writeblog-text" href="" >写博客</a>




            <!--用户已登陆-->
            <!--没有用户登陆-->
            <c:choose>
                <c:when test="${sessionScope.user} != null">
                    <div class="top-login" >
                        <div class="top-login-img">
                            <img src="${pageContext.request.contextPath}/statics/img/8098750623_66292a35c0_z.jpg" />
                        </div>
                        <div>
                            <span>用户名</span>|<a href="">退出</a>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="top-nologin" >
                        <a href="">登陆</a>
                        <a href="">注册</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="top-second-navbar">
            <ul class="top-second-ul">
                <li><a href="" >分类1</a></li>
                <li><a href="">分类2</a></li>
                <li><a href="">分类3</a></li>
                <li><a href="">分类4</a></li>
            </ul>
        </div>
    </div>
