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
            <form>
                <div class="page-blog-title">
                    <span>博客标题：</span><input type="text" name="" class="page-title" />
                </div>
                <div class="textarea">
                    <textarea id="textarea" class="xheditor {skin:'default'}"></textarea>
                </div>

                <div class="select">
                    类别：<select>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                </select>
                </div>

                <div class="page-blog-submit">
                    <input value="发表博客" type="submit" />
                </div>

            </form>
        </div>
    </div>
</div>
    </body>
</html>

