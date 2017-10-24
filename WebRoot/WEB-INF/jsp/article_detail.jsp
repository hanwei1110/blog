<%@page pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>个人博客——博客</title>
		<meta name="keywords" content="个人博客模板,博客模板,响应式" />
		<meta name="description" content="如影随形主题的个人博客模板，神秘、俏皮。" />
		<link href="../include/css/base.css" rel="stylesheet"/>
		<link href="../include/css/style.css" rel="stylesheet"/>
		<link href="../include/css/media.css" rel="stylesheet"/>
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>
		<!--[if lt IE 9]>
		<script src="../include/js/modernizr.js"></script>
		<![endif]-->
	</head>
<body>
<div class="ibody">
  <header>
    <h1>个人博客后台管理系统</h1>
    <h2>.</h2>
    <div class="logo"><a href="../manage/article"></a></div>
	 <%@ include file="manage_nav.jsp" %> 
   </header>
  <article>
    <h2 class="about_h">您现在的位置是：<a href="../manage/article">首页</a>><a href="../manage/article">博文管理</a>><a href="#">博文详情</a></h2>
    <div class="index_about">
      <h2 class="c_titile"><s:property value="article.title"/></h2>
      <p class="box_c"><span class="d_time">发布时间：<s:property value="article.time"/></span><span>编辑：<s:property value="article.autor"/></span><span>浏览（<s:property value="article.count"/>）</span><span>评论（<s:property value="article.count1"/>）</span></p>
      <ul class="infos">
        <s:property value="article.content" escape="false"/>
      </ul>
      <div class="keybq">
        <p><span>关键字词</span>：<s:property value="article.keywords"/></p>
      </div>
      <div class="nextinfo">
      <s:if test="articleBefore!=null">
        <p>上一篇：<a href="../article/article_detail?id=<s:property value="id-1"/>"><s:property value="articleBefore.title"/></a></p>
      </s:if>
      <s:if test="articleAfter!=null">
        <p>下一篇：<a href="../article/article_detail?id=<s:property value="id+1"/>"><s:property value="articleAfter.title"/></a></p>
      </s:if>
      </div>
    </div>
  </article>
  <script src="../include/js/silder.js"></script>
  <div class="clear"></div>
  <!-- 清除浮动 --> 
</div>
</body>
</html>
