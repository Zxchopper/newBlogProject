<%--
  Created by IntelliJ IDEA.
  User: younger
  Date: 2018/1/10
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%--博客首页--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/blogheader.jsp"%>
<!--这里是博客首页主体部分-->
        <div class="mainbody">
            <!--主题部分左边，博客列表-->
            <div class="mainbody-left">
                <p class="blog-list"><span>文章列表</span><span>更多</span></p>
                <ul>
                    <c:forEach items="${blogs}" varStatus="status" var="blog">



                    <li>
                        <div class="blog-list-div">
                            <a class="blog-list-title">${blog.title}</a>

                            <p class="blog-list-p"><sapn>标题id${blog.genreId}</sapn>&nbsp;&nbsp;<span>用户id${blog.uid}</span>&nbsp;&nbsp;<span>${blog.createTime}</span></p>
                        </div>
                    </li>
                    </c:forEach>
                </ul>

                <ul class="blog-list-page">
                    <li>${pages.currentPageNo}/${pages.totalPageCount}</li>
                    <li><a href="selectBlog?pageNo=1">首页</a></li>
                    <c:if test="${pages.currentPageNo>1}">
                    <li><a href="selectBlog?pageNo=${pages.currentPageNo-1}">上一页</a></li></c:if>
<c:if test="${pages.currentPageNo<pages.totalPageCount}">  <li><a href="selectBlog?pageNo=${pages.currentPageNo+1}">下一页</a></li></c:if>
                    <li><a href="selectBlog?pageNo=${pages.totalPageCount}">末页</a></li>
                </ul>
            </div>
            <!--主体部分右边-->
            <div class="mainbogy-right">
                <!--轮播图-->
                <div class="mainbody-right-top">
                    <ul class="slides">
                        <input type="radio" name="radio-btn" id="img-1" checked />
                        <li class="slide-container">
                            <div class="slide">
                                <img src="${pageContext.request.contextPath}/statics/img/8346734966_f9cd7d0941_z.jpg" />
                            </div>
                            <div class="nav">
                                <label for="img-6" class="prev">&#x2039;</label>
                                <label for="img-2" class="next">&#x203a;</label>
                            </div>
                        </li>

                        <input type="radio" name="radio-btn" id="img-2" />
                        <li class="slide-container">
                            <div class="slide">
                                <img src="${pageContext.request.contextPath}/statics/img/8365873811_d32571df3d_z.jpg" />
                            </div>
                            <div class="nav">
                                <label for="img-1" class="prev">&#x2039;</label>
                                <label for="img-3" class="next">&#x203a;</label>
                            </div>
                        </li>

                        <input type="radio" name="radio-btn" id="img-3" />
                        <li class="slide-container">
                            <div class="slide">
                                <img src="${pageContext.request.contextPath}/statics/img/8250438572_d1a5917072_z.jpg" />
                            </div>
                            <div class="nav">
                                <label for="img-2" class="prev">&#x2039;</label>
                                <label for="img-4" class="next">&#x203a;</label>
                            </div>
                        </li>

                        <input type="radio" name="radio-btn" id="img-4" />
                        <li class="slide-container">
                            <div class="slide">
                                <img src="${pageContext.request.contextPath}/statics/img/8237246833_54d8fa37f0_z.jpg" />
                            </div>
                            <div class="nav">
                                <label for="img-3" class="prev">&#x2039;</label>
                                <label for="img-5" class="next">&#x203a;</label>
                            </div>
                        </li>

                        <input type="radio" name="radio-btn" id="img-5" />
                        <li class="slide-container">
                            <div class="slide">
                                <img src="${pageContext.request.contextPath}/statics/img/8098750623_66292a35c0_z.jpg" />
                            </div>
                            <div class="nav">
                                <label for="img-4" class="prev">&#x2039;</label>
                                <label for="img-6" class="next">&#x203a;</label>
                            </div>
                        </li>

                        <input type="radio" name="radio-btn" id="img-6" />
                        <li class="slide-container">
                            <div class="slide">
                                <img src="${pageContext.request.contextPath}/statics/img/8098750703_797e102da2_z.jpg" />
                            </div>
                            <div class="nav">
                                <label for="img-5" class="prev">&#x2039;</label>
                                <label for="img-1" class="next">&#x203a;</label>
                            </div>
                        </li>

                        <li class="nav-dots">
                            <label for="img-1" class="nav-dot" id="img-dot-1"></label>
                            <label for="img-2" class="nav-dot" id="img-dot-2"></label>
                            <label for="img-3" class="nav-dot" id="img-dot-3"></label>
                            <label for="img-4" class="nav-dot" id="img-dot-4"></label>
                            <label for="img-5" class="nav-dot" id="img-dot-5"></label>
                            <label for="img-6" class="nav-dot" id="img-dot-6"></label>
                        </li>
                    </ul>
                </div>
                <!--最新评论-->
                <div class="mainbody-right-botton">
                    <div class="mainbody-right-botton-title">
                        <p>最新评论</p>
                        <p>更多</p>
                    </div>
                    <ul>
                        <li>
                            <div class="mainbody-right-botton-liDiv">
                                <img /><br><span>用户名</span>
                            </div>
                            <p>十五字，十五字，十五字，十五字，十五字</p>
                        </li>
                        <li>
                            <div class="mainbody-right-botton-liDiv">
                                <img /><br><span>用户名</span>
                            </div>
                            <p>十五字，十五字，十五字，十五字，十五字</p>
                        </li>
                        <li>
                            <div class="mainbody-right-botton-liDiv">
                                <img /><br><span>用户名</span>
                            </div>
                            <p>十五字，十五字，十五字，十五字，十五字</p>
                        </li>
                        <li>
                            <div class="mainbody-right-botton-liDiv">
                                <img /><br><span>用户名</span>
                            </div>
                            <p>十五字，十五字，十五字，十五字，十五字</p>
                        </li>
                    </ul>
                    <c:forEach items="${BlogGenres}" var="blogGenre" varStatus="status">
                        ${blogGenre.genreName}

                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>

