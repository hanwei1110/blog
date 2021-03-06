<%@page pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>个人博客——相册</title>
		<meta name="keywords" content="个人博客模板,博客模板,响应式" />
		<meta name="description" content="如影随形主题的个人博客模板，神秘、俏皮。" />
		<link href="../include/css/base.css" rel="stylesheet"/>
		<link href="../include/css/style.css" rel="stylesheet"/>
		<link href="../include/css/media.css" rel="stylesheet"/>
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>
		<!--[if lt IE 9]>
		<script src="js/modernizr.js"></script>
		<![endif]-->
	</head>
<body>
<div class="ibody">
  <header>
    <h1>个人博客后台管理系统</h1>
    <h2>.</h2>
    <div class="logo"><a href="../manage/article"></a></div>
	<%@ include file="../manage_nav.jsp" %>
      </header>
  <article>
    <h2 class="about_h">您现在的位置是：<a href="../manage/article">后台首页</a>><a href="#">相册管理</a></h2>
    <div class="template">
      <h3>
        <p><span>个人相册</span></p>
        <a href="../manage/to_album_add"  class="more">新建相册</a> </h3>
      <ul>
      <s:iterator value="albums">
        <li><a href="album_detail?id=<s:property value="id"/>" ><img src="<s:property value="image" />"/></a><span><s:property value="title"/><a href="../manage/album_delete?id=<s:property value="id" />">删除</a></span></li>
      </s:iterator>
      </ul>
  </article>
  <script src="../include/js/silder.js"></script>
  <div class="clear"></div>
  <!-- 清除浮动 --> 
</div>
</body>
</html>
