<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>     
    <title>微信</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <!-- 
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    -->  


  </head>
  <div>
      <!-- 这一个div是文本编辑器-->
  <script type="text/javascript" src="statics/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="statics/js/xheditor-1.2.2.min.js"></script>
  <script type="text/javascript" src="statics/js/xheditor_lang/zh-cn.js"></script>
  <script type="text/javascript">
        $(function () {
            // 初始化在线编辑器
            $('#Content').xheditor({
                tools: 'full',
                width: '100%',
                height: '450',
                upBtnText: '上传',
            });
        });
</script>
      <form action="index.jsp" method="get">
          <select id="selType">
              <option value="0">请选择</option>
              <option value="1">原创</option>
              <option value="2">转载</option>
              <option value="4">翻译</option>
          </select>
          <input type="text" id="txtTitle" maxlength="100" placeholder="输入文章标题">

          <textarea id="Content" name="Content" placeholder="请输入内容"></textarea>
      </form>
       </div>


  <script type="text/javascript">
      var jiathis_config = {
          url: "http://www.baidu.com",
          title: "百度主页分享",
          summary:"我们试试分享百度主页!"
      }
  </script>

  <body>

  <div>

      <span style="font-family: 'Microsoft YaHei', arial, tahoma, 宋体, sans-serif;"></span>
          <div id="ckepop"> <span class="jiathis_txt">分享到：</span>
      <a class="jiathis_button_weixin">微信</a>
      <a href="http://www.jiathis.com/share"  class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>
      <a class="jiathis_counter_style"></a> </div>
      <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1" charset="utf-8"></script>
      <script src="http://v2.jiathis.com/code/jiathis_r.js?move=0"></script>
  </div>


  <h1>分享到微信测试</h1>
  </body>  
</html>
