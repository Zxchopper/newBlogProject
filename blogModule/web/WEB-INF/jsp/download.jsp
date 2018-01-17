<%--
  Created by IntelliJ IDEA.
  User: 徐永乐
  Date: 2018/1/9
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>文件下载页面</title>
    <style type="text/css">
        li{
            margin-left: 20px;
            float: left;
            list-style: none;
            width: 210px;
        }
    </style>
</head>
<body>
<br>
<hr>
    <p align="center"><a style="font-size: 22px;color: #4b72a4" href="toUpload">跳转上传页面</a></p>
<hr>
<br>
<p align="center" style="font-size: 18px">↓文件下载↓</p>
<ul>
    <c:forEach items="${downloads}" var="list">
        <li>
            <a href="download?path=${list.downloadPath}">
                <img src="${list.downloadPath}" alt="${list.describle}" width="200px" height="200px"><br>
                <p style="font-size: 14px" align="center">标题：${list.title}</p>
                <p align="center" style="font-size: 12px">描述：${list.describle}</p>
                <p style="font-size: 14px" align="center">价格:${list.price}￥</p>
                <p style="font-size: 14px" align="center">下载次数：${list.downloadAmout}</p>
            </a>
        </li>
    </c:forEach>
    </ul>
</body>
</html>
