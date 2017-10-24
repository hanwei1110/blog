<%@page pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>个人博客——更新博客</title>
		<meta name="keywords" content="个人博客模板,博客模板,响应式" />
		<meta name="description" content="如影随形主题的个人博客模板，神秘、俏皮。" />
		<link href="../include/css/base.css" rel="stylesheet"/>
		<link href="../include/css/style.css" rel="stylesheet"/>
		<link href="../include/css/media.css" rel="stylesheet"/>
		<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>
		<style type="text/css">
			/*为段落定义样式*/
			input {border:0;}
			span {color:#099;}
		</style>
		<!--[if lt IE 9]>
		<script src="../include/js/modernizr.js"></script>
		<![endif]-->
	</head>
<body>
<div class="ibody">
  <header>
    <h1>个人博客后台管理系统</h1>
    <h2>..</h2>
    <div class="logo"><a href="../manage/article"></a></div>
   <%@ include file="../manage_nav.jsp" %>
    </header>
  <article>
    <h2 class="about_h">您现在的位置是：<a href="../manage/article">后台首页</a>><a href="#">博客更新</a></h2>
    <div class="index_about">
    <form action="../manage/article_update" method="post" theme="xhtml" enctype="multipart/form-data">
    	<table>
    		<tr>
	    		<td><input name="article.title" value="<s:property value="article.title"/>" style="width:100%;font-size:12pt;text-align:center;"/></td>
    		</tr>
    		<tr>
	    		<td><span>文章配图:</span><input type="file" name="some"/><div style="display:none"><input name="article.image" value="<s:property value="article.image"/>"/></div></td>
    		</tr>
    		<tr>
    			<td><textarea name="article.content" ><s:property value="article.content"/></textarea></td>
    			<ckeditor:replace  replace="article.content" basePath="../ckeditor/" />
    		</tr>
    		<tr>
    			<td>
    				<span>发表时间:</span><input  name="article.time" value="<s:property value="article.time"/>" style="width:90px"/>
    				<span>作者:</span><input name="article.editer" value="<s:property value="article.editer"/>" style="width:90px"/>
    				<span>浏览:</span><input name="article.count" value="<s:property value="article.count"/>"/>
    				<span>评论:</span><input name="article.count1" value="<s:property value="article.count1"/>"/>
    			</td>
    		</tr>
    		<tr>
	    		<td>
	    			<span>关键词:</span><input name="article.keywords" value="<s:property value="article.keywords"/>"style="width:90px"/>
	    			<span>分类:</span><input name="article.type" value="<s:property value="article.type"/>"style="width:90px"/>
	    			<span>设为推荐:</span>
	    			<s:if test="#article.notice=='recommendArticles'">
		    			<input name="article.notice" type="radio" value="1" checked/>是
		 				<input name="article.notice" type="radio" value="2" />否
	    			</s:if>
	    			<s:else>
	    				<input name="article.notice" type="radio" value="1" />是
		 				<input name="article.notice" type="radio" value="2" checked/>否
	    			</s:else>
	    			<input name="article.id" value="<s:property value="article.id"/>" style="display:none;"/>
	    		</td>
    		</tr>
    	</table>
    </form>
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