<%--
  Created by IntelliJ IDEA.
  User: younger
  Date: 2018/1/11
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/bbsheader.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bbsmy.css" />
<!--textarea工具-->
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.8.3.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/xheditor-1.2.2.min.js" ></script>
<div class="easyui-layout" style="width:100%;height: 100%;">
    <!--用户论坛功能导航-->
    <div  data-options="region:'west',split:true,title:'用户论坛导航'" style="width:150px;padding:10px;">
        <ul class="left-bar">
            <li><a href="">我的帖子</a></li>
            <li><a href="">我要发帖</a></li>
            <li><a href="">我的回帖</a></li>
        </ul>
    </div>
    <!--主要功能页面-->
    <div data-options="region:'center'" style="background: lightgoldenrodyellow;">
        <div class="right-mylist">
            <form class="addForm">
                <table border="1px" cellspacing="0">
                    <tr>
                        <td width="30%">文章标题</td>
                        <td width="50%"><input type="text" name="title"></td>
                    </tr>
                    <tr>
                        <td>文章内容</td>
                        <td><textarea id="textarea" class="xheditor {skin:'default'}" style="width:500px;height: 500px;"></textarea></td>
                    </tr>
                    <tr>
                        <td>选择板块</td>
                        <td>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="发表帖子"  /></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>


</div>
</body>
</html>