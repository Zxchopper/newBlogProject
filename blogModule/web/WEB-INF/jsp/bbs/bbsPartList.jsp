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
<div class="bbs-view">
    <h4>帖子分区名</h4>
    <table id="dg" class="easyui-datagrid"   data-options="rownumbers:true,singleSelect:true" style="width:100%;height:280px" >
        <thead>
        <tr>
            <th field="name1" width="65%">标题</th>
            <th field="name2" width="20%">分数</th>
            <th field="name3" width="15%">时间</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>

        </tr>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>
        </tr>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>
        </tr>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>
        </tr>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>
        </tr>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>
        </tr>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>
        </tr>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>
        </tr>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>
        </tr>
        <tr>
            <td><a href="">帖子标题</a></td>
            <td>11</td>
            <td>2018-1-11</td>
        </tr>
        </tbody>
    </table>
    <div class="pagination">
        <p>1/3</p>
        <ul>
            <li><a href="">首页</a></li>
            <li><a href="">上一页</a></li>
            <li><a href="">下一页</a></li>
            <li><a href="">末页</a></li>
        </ul>
    </div>
</div>


</div>
</body>
</html>