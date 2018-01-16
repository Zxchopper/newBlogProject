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
                        <td><input type="text" disabled="" class="edit" value="测试"><span  class="fn save" ><a class="toSave">保存</a><a class="cancel">取消</a></span></td>
                        <td><a class="toEdit">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                    </tr>
                    <tr>
                        <td><input type="text" disabled="" class="edit" value="测试"><span  class="fn save"><a class="toSave">保存</a><a class="cancel">取消</a></span></td>
                        <td><a class="toEdit">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                    </tr>
                    <tr>
                        <td><input type="text" disabled="" class="edit" value="测试"><span  class="fn save"><a class="toSave">保存</a><a class="cancel">取消</a></span></td>
                        <td><a class="toEdit">修改</a>&nbsp;&nbsp;<a href="">删除</a></td>
                    </tr>
                    <tr>
                        <td><input type="text" disabled="" class="edit" value="测试"><span  class="fn save"><a class="toSave">保存</a><a class="cancel">取消</a></span></td>
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

<script>
    $(function(){
        $(".toEdit").click(function(){
            var $_this = $(this);
            alert($_this.parents("tr").find(".edit").val());
            $_this.parents("tr").find(".edit").removeAttr("disabled");
            $_this.parents("tr").find(".fn").removeClass("save");
        })

        $(".cancel").click(function(){
            var $_this = $(this);
            alert($_this.parents("tr").find(".edit").val());
            $_this.parents("tr").find(".edit").attr("disabled","disabled");
            $_this.parents("tr").find(".fn").addClass("save");
        })

        $(".toSave").click(function(){
            var $_this = $(this);
            var newCategory=$_this.parents("tr").find(".edit").val()
            alert($_this.parents("tr").find(".edit").val());
            $_this.parents("tr").find(".edit").attr("disabled","disabled");
            $_this.parents("tr").find(".fn").addClass("save");
            $.ajax({
                type:"get",
                url:"/skip/test",
                data:"newCategory="+newCategory,
                dataType:"text",
                success:callBack
            });
        })
    })

    function callBack(data){
        if(data == "true"){
            $.messager.alert('消息','修改成功','info');
        }
    }

</script>

