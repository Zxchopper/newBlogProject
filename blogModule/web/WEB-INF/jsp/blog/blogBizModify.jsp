<%--
  Created by IntelliJ IDEA.
  User: younger
  Date: 2018/1/10
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%--博客首页--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/blogBiz.css" />
<!--textarea工具-->
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.8.3.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/xheditor-1.2.2.min.js" ></script>
<%@include file="/WEB-INF/jsp/common/blogheader.jsp"%>
<!--这里是博客首页主体部分-->
<div class="mainbody">
    <div class="BizMain">
        <!--左侧功能栏-->
        <%@include file="/WEB-INF/jsp/common/blogBizNav.jsp"%>
        <!--具体功能页面-->
        <div class="function-page">
            <form action="modifyBlog" method="post">
                <div class="page-blog-title">
                    <span>博客标题：</span><input type="text" name="title" class="page-title" value="${blog.title}"/>
                </div>
                <div class="textarea">
                    <textarea name="contentPath" id="textarea" class="xheditor {skin:'default'}">${blog.contentPath}</textarea>
                </div>

                <div class="select">
                    类别：<select name="genreId">
                    <c:forEach items="${BlogGenres}" var="blogGenre" varStatus="status">
                        <option value="${ status.index + 1}">${blogGenre.genreName}</option>

                    </c:forEach>
                </select>
                </div>

                <div class="page-blog-submit">
                    <input type="hidden" value="${blog.bid}" name="bid">
                    <input value="${blog.uid}" name="uid" type="hidden">
                    <input value="发表博客" type="submit" />
                </div>

            </form>
        </div>
    </div>
</div>
    </body>
</html>

