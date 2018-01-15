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
<%@include file="/WEB-INF/jsp/common/blogheader.jsp"%>
<!--这里是博客首页主体部分-->
<div class="mainbody">
    <div class="BizMain">
        <!--左侧功能栏-->
        <%@include file="/WEB-INF/jsp/common/blogBizNav.jsp"%>
        <!--具体功能页面-->
        <div class="function-page">
            <table border="1px" cellspacing="0">
                <tr>
                    <th>标题</th>
                    <th>管理</th>
                </tr>
                <tr>
                    <td><a href="">文章标题</a><span>2018-01-13</span></td>
                    <td><a href="">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                </tr>
                <tr>
                    <td><a href="">文章标题</a><span>2018-01-13</span></td>
                    <td><a href="">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                </tr>
                <tr>
                    <td><a href="">文章标题</a><span>2018-01-13</span></td>
                    <td><a href="">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                </tr>
                <tr>
                    <td><a href="">文章标题</a><span>2018-01-13</span></td>
                    <td><a href="">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                </tr>
                <tr>
                    <td><a href="">文章标题</a><span>2018-01-13</span></td>
                    <td><a href="">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                </tr>
            </table>
            <div class="function-page-blog-page">
                <ul>
                    <li>1/3</li>
                    <li><a href="">首页</a></li>
                    <li><a href="">上一页</a></li>
                    <li><a href="">下一页</a></li>
                    <li><a href="">末页</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
    </body>
</html>

