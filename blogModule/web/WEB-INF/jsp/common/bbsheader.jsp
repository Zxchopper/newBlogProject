<%--
  Created by IntelliJ IDEA.
  User: younger
  Date: 2018/1/10
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%--BBS页面头部--%>
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
    <%--bbs首页--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bbs.css" />
</head>
<body class="easyui-layout">
<div data-options="region:'west',split:true,title:'论坛导航'" style="width:150px;padding:10px;">
    <%--论坛导航--%>
    <c:choose>
        <c:when test="sessionScope.user != null">
            <%--用户登陆--%>
            <div class="navbar-login">
                <div class="top-login-img">
                    <img src="${pageContext.request.contextPath}/statics/img/8a9c025fdb6026d6ac14b43fe7f6306a504e20f7.jpg" />
                </div>
                <div>
                    <span>用户名</span>|<a href="">退出</a>
                </div>
                <ul class="bbs-left-bar">
                    <li><a href="">我要发帖</a></li>
                    <li><a href="">我的帖子</a></li>
                </ul>
            </div>
        </c:when>
        <c:otherwise>
            <div class="navbar-nologin">
                <ul class="bbs-left-bar">
                    <li><a href="${pageContext.request.contextPath}/user/goLogin">登陆</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/goRegister">注册</a></li>
                </ul>
            </div>
        </c:otherwise>
    </c:choose>
</div>
<div data-options="region:'center'" style="background: lightgoldenrodyellow;">
    <!--顶部导航-->
   <%@include file="/WEB-INF/jsp/common/topbar.jsp"%>
