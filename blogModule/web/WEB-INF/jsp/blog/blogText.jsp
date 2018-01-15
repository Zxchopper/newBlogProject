<%--
  Created by IntelliJ IDEA.
  User: younger
  Date: 2018/1/10
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%--博客首页--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/blogheader.jsp"%>
<!--这里是博客首页主体部分-->
        <div class="mainbody">
            <!--主题部分左边，博客列表-->
            <div class="mainbody-public-body">
                <div class="mainbody-public-body-text">
                    <div class="mainbody-public-body-text-title">
                        <h3>文章标题</h3>
                        <span>作者名</span><span>2018-01-13</span><span>分类名</span>
                    </div>
                    <div class="text">
                        这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！<br />
                        这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！<br />
                        这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！<br />
                        这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！<br />
                        这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！这里是正文内容！！！！
                    </div>
                </div>
                <!--有用户登陆-->
                <div class="mainbody-public-body-text-control" >
                    <form>
                        <input type="text" style="width: 80%;margin-left: 10px;"/>
                        <input type="submit" value="提交评论" />
                    </form>
                </div>
                <!--无用户登陆-->
                <div class="mainbody-public-body-text-control" style="display: none;">
                    <a href="">登陆</a>
                    <a href="">注册</a>
                </div>
                <!--评论去-->
                <div class="mainbody-public-body-text-comment">
                    <ul>
                        <li>
                            <div>
                                <img src="../img/8098750703_797e102da2_z.jpg" /><br />
                                <span>用户名</span>
                            </div>
                            <div>
                                十五字，十五字，十五字,十五字,十五字
                            </div>
                        </li>
                        <li>
                            <div>
                                <img src="../img/8098750703_797e102da2_z.jpg" /><br />
                                <span>用户名</span>
                            </div>
                            <div>
                                十五字，十五字，十五字,十五字,十五字
                            </div>
                        </li>
                        <li>
                            <div>
                                <img src="../img/8098750703_797e102da2_z.jpg" /><br />
                                <span>用户名</span>
                            </div>
                            <div>
                                十五字，十五字，十五字,十五字,十五字
                            </div>
                        </li>
                        <li>
                            <div>
                                <img src="../img/8098750703_797e102da2_z.jpg" /><br />
                                <span>用户名</span>
                            </div>
                            <div>
                                十五字，十五字，十五字,十五字,十五字
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>

