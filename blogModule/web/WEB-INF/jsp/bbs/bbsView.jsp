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
    <div class="bbs-view-function">
        <ul>
            <li><a class="easyui-linkbutton" data-options="iconCls:'icon-add'" href="">我要发帖</a></li>
            <li><a class="easyui-linkbutton" data-options="iconCls:'icon-undo'" href="">回复</a></li>
        </ul>
    </div>
    <!--楼主贴子部分-->
    <div class="bbs-view-post">
        <div class="bbs-view-post-left">
            <div class="bbs-view-post-left-userInfo">
                <img src="../img/8346734966_f9cd7d0941_z.jpg" /><br />
                <span>用户名</span>
                <span class="floor">#楼主</span>
            </div>
        </div>
        <div class="bbs-view-post-text">
            <div class="bbs-view-post-text-info">
                这是贴纸内容，这是贴纸内容，这是贴纸内容，这是贴纸内容，这是贴纸内容
            </div>
        </div>

    </div>
    <!--回帖部分-->
    <div class="bbs-view-Replieses">
        <ul>
            <li>
                <div class="bbs-view-Replies">
                    <div class="bbs-view-post-left">
                        <div class="bbs-view-post-left-userInfo">
                            <img src="../img/8346734966_f9cd7d0941_z.jpg" /><br />
                            <span>用户名</span>
                            <span class="floor">#1楼</span>
                        </div>
                    </div>
                    <div class="bbs-view-post-text">
                        <div class="bbs-view-post-text-info">
                            十五字，十五字，十五字，十五字，十五字
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="bbs-view-Replies">
                    <div class="bbs-view-post-left">
                        <div class="bbs-view-post-left-userInfo">
                            <img src="../img/8346734966_f9cd7d0941_z.jpg" /><br />
                            <span>用户名</span>
                            <span class="floor">#2楼</span>
                        </div>
                    </div>
                    <div class="bbs-view-post-text">
                        <div class="bbs-view-post-text-info">
                            十五字，十五字，十五字，十五字，十五字
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="bbs-view-Replies">
                    <div class="bbs-view-post-left">
                        <div class="bbs-view-post-left-userInfo">
                            <img src="../img/8346734966_f9cd7d0941_z.jpg" /><br />
                            <span>用户名</span>
                            <span class="floor">#3楼</span>
                        </div>
                    </div>
                    <div class="bbs-view-post-text">
                        <div class="bbs-view-post-text-info">
                            十五字，十五字，十五字，十五字，十五字
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="bbs-view-Replies">
                    <div class="bbs-view-post-left">
                        <div class="bbs-view-post-left-userInfo">
                            <img src="../img/8346734966_f9cd7d0941_z.jpg" /><br />
                            <span>用户名</span>
                            <span class="floor">#4楼</span>
                        </div>
                    </div>
                    <div class="bbs-view-post-text">
                        <div class="bbs-view-post-text-info">
                            十五字，十五字，十五字，十五字，十五字
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="bbs-view-Replies">
                    <div class="bbs-view-post-left">
                        <div class="bbs-view-post-left-userInfo">
                            <img src="../img/8346734966_f9cd7d0941_z.jpg" /><br />
                            <span>用户名</span>
                            <span class="floor">#5楼</span>
                        </div>
                    </div>
                    <div class="bbs-view-post-text">
                        <div class="bbs-view-post-text-info">
                            十五字，十五字，十五字，十五字，十五字
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="bbs-view-Replies">
                    <div class="bbs-view-post-left">
                        <div class="bbs-view-post-left-userInfo">
                            <img src="../img/8346734966_f9cd7d0941_z.jpg" /><br />
                            <span>用户名</span>
                            <span class="floor">#6楼</span>
                        </div>
                    </div>
                    <div class="bbs-view-post-text">
                        <div class="bbs-view-post-text-info">
                            十五字，十五字，十五字，十五字，十五字
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>


</div>
</body>
</html>