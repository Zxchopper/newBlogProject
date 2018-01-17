<%--
  Created by IntelliJ IDEA.
  User: younger
  Date: 2018/1/10
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%--BBS首页--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/bbsheader.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--内容部分-->
<div class="bbs-main">
    <!--分类-->
    <div class="bbs-main-category">
        <h4 class="bbs-main-title">热门分类</h4>
        <ul>
            <c:forEach items="${forumgenreList}" var="forumgenre">
                <li>
                    <dl>
                        <dt>${forumgenre.genreName}</dt>
                    </dl>
                </li>
            </c:forEach>
        </ul>
    </div>
    <!--热帖-->
    <div class="bbs-main-post">
        <h4 class="bbs-main-title">最新帖子</h4>
        <ul>
            <c:forEach items="${forumList}" var="forum">
                <li>
                    <p><span class="tip">[<a href="#">xx推荐</a>]</span><a href="#" class="post-title">${forum.title}</a><span class="tip">[<a href="#">${forum.forumgenre.genreName}</a>]</span><span>作者:${forum.user.userName}</span></p>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>

</div>
</body>
</html>

