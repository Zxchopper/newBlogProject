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
    <style type="text/css">
        li{
            list-style: none;
            float: left;
            margin-left: 20px;
            width: 210px;
        }
    </style>
    <title>文件下载页面</title>
</head>
<body>
    <br><hr><p style="font-size: 22px;color: #1f637b" align="center"><a href="toUpload">上传文件</a> </p>
    <hr><br><p align="center">↓下载文件↓</p><hr>
    <ul>
    <c:forEach items="${downloads}" var="list">
        <li>
            <a href="download?path=${list.downloadPath}" alt="点击下载" >
            <img src="${list.downloadPath}" alt="" width="200px" height="200px">
            <p style="font-size: 18px" align="center">标题：${list.title}</p>
            <p style="font-size: 12px" align="center">描述：${list.describle}</p>
            <p style="font-size: 16px" align="center">价格：${list.price}</p>
            <p style="font-size: 16px" align="center">下载次数：${list.downloadAmout}</p>
            </a>
        </li>
    </c:forEach>
    </ul>
</body>
</html>
