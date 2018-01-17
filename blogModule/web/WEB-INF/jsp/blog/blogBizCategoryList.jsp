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
                    <c:forEach items="${BlogGenres}" var="BlogGenre" >
                        <tr>
                            <td><input type="text" disabled="" class="edit" value="${BlogGenre.genreName}"><span  class="fn save" ><a class="toSave" data-id="${BlogGenre.id}">保存</a><a class="cancel">取消</a></span></td>
                            <td><a class="toEdit">修改</a>&nbsp;&nbsp;<a class="del" data-id="${BlogGenre.id}">删除</a></td>
                        </tr>
                    </c:forEach>
                </table>
                </table>
            </div>

            <div class="category-add">
                    添加<input name="genreName" id="genreName" type="text"  />
                    <input type="button" value="添加" id="add"/>
            </div>
        </div>
    </div>
</div>
    </body>
</html>

<script>
    $(function(){
        //点击修改事件
        $(".toEdit").click(function(){
            var $_this = $(this);
            $_this.parents("tr").find(".edit").removeAttr("disabled");
            $_this.parents("tr").find(".fn").removeClass("save");
        })

        //点击取消事件
        $(".cancel").click(function(){
            var $_this = $(this);
            $_this.parents("tr").find(".edit").attr("disabled","disabled");
            $_this.parents("tr").find(".fn").addClass("save");
        })

        //点击保存事件
        $(".toSave").click(function(){
            var $_this = $(this);
            var newCategory=$_this.parents("tr").find(".edit").val();
            var id = $_this.attr("data-id");
            $_this.parents("tr").find(".edit").attr("disabled","disabled");
            $_this.parents("tr").find(".fn").addClass("save");
            $.ajax({
                type:"get",
                url:"/genre/update",
                data:"genreName="+newCategory+"&id="+id,
                dataType:"text",
                success:callBack
            });
        })

        //点击删除
        $(".del").click(function () {
            var id = $(this).attr("data-id");
            $.ajax({
                type:"get",
                url:"/genre/del",
                data:"id="+id,
                dataType:"text",
                success:delBack
            });
        })

        //点击新增
        $("#add").click(function(){
           var genreName = $("#genreName").val();
           $.ajax({
               type:"get",
               url:"/genre/insert",
               data:"genreName="+genreName,
               dataType:"text",
               success:insertBack
           })
        })
    })
    //修改回调
    function callBack(data){
        if(data == "true"){
            $.messager.alert('消息','修改成功','info');
        }else{
            $.messager.alert('消息','修改失败','info');
        }
    }
    //删除回调
    function delBack(data) {
        data == "true" ? $.messager.alert('删除信息','删除成功','info',function () {skip();}):$.messager.alert('删除信息','删除失败','info');
    }
    //新增回调
    function insertBack(data) {
        data == "true" ? $.messager.alert('新增信息','新增成功','info',function () {skip();}):$.messager.alert('新增信息','新增失败','info');
    }

    //跳转回调
    function skip() {
        location.href="/blog/selectBlogGenres"
    }
</script>

