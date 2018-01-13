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
            <div class="category-list">
                <table border="1px" cellspacing="0">
                    <tr>
                        <th>标题</th>
                        <th>管理</th>
                    </tr>
                    <tr>
                        <td><input type="text" disabled="" class="edit" value="测试"></td>
                        <td><a class="toEdit">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                    </tr>
                    <tr>
                        <td><input type="text" disabled="" class="edit" value="测试"></td>
                        <td><a class="toEdit">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                    </tr>
                    <tr>
                        <td><input type="text" disabled="" class="edit" value="测试"></td>
                        <td><a class="toEdit">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                    </tr>
                    <tr>
                        <td><input type="text" disabled="" class="edit" value="测试"></td>
                        <td><a class="toEdit">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                    </tr>
                </table>
                </table>
            </div>

            <div class="category-add">
                <form>
                    添加<input name="" type="text"  />
                    <input type="submit" value="添加" />
                </form>
            </div>
        </div>
    </div>
</div>
    </body>
</html>

