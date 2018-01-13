<%--
  Created by IntelliJ IDEA.
  User: younger
  Date: 2018/1/11
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--顶部导航部件--%>
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
                    <a href="/user/goLogin">登陆</a>
                    <a href="${pageContext.request.contextPath}/user/goRegister">注册</a>
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