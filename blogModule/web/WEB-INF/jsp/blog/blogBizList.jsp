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
                <c:forEach items="${blogs}" var="blog" varStatus="status">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/blog/view?bid=${blog.bid}">${blog.title}</a>&nbsp;&nbsp;<span>${blog.createTime}</span></td>
                    <td><a href="">修改</a>&nbsp;&nbsp;<a class="del" data-bid="${blog.bid}">删除</a></td>
                </tr>

                </c:forEach>
            </table>
            <div class="function-page-blog-page">
                <ul>
                    <li>${pages.currentPageNo}/${pages.totalPageCount}</li>
                    <li><a href="${pageContext.request.contextPath}/blog/selectUserBlog?pageNo=1">首页</a></li>
                    <c:if test="${pages.currentPageNo}>1">
                        <li><a href="${pageContext.request.contextPath}/blog/selectUserBlog?pageNo=${pages.currentPageNo-1}">上一页</a></li>
                    </c:if>
                    <c:if test="${pages.currentPageNo<pages.totalPageCount}">
                        <li><a href="${pageContext.request.contextPath}/blog/selectUserBlog?pageNo=${pages.currentPageNo+1}">下一页</a></li>
                    </c:if>
                    <li><a href="${pageContext.request.contextPath}/blog/selectUserBlog?pageNo=${pages.totalPageCount}">末页</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
    </body>
</html>
<script type="text/javascript">
    $(function(){
        $(".del").click(function(){
           var bid = $(this).attr("data-bid")
            $.messager.confirm('消息','确定删除吗？',function(r){
                if(r){
                    $.ajax({
                        type:'post',
                        url:"/blog/removeBlog",
                        data:"bid="+bid,
                        dataType:'text',
                        success:callBcak
                    });
                }
            })
        })
    })

    function callBcak (data){
        if(data == 'true'){
            $.messager.alert('消息','删除成功','info',function(){
                location.href='/blog/selectUserBlog';
            })
        }else{
            $.messager.alert('消息','删除失败','info');
        }
    }
</script>

