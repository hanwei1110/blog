<%@page pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>个人博客——登录</title>
		<meta name="keywords" content="个人博客模板,博客模板,响应式" />
		<meta name="description" content="如影随形主题的个人博客模板，神秘、俏皮。" />
		<link href="../include/css/base.css" rel="stylesheet"/>
		<link href="../include/css/style.css" rel="stylesheet"/>
		<link href="../include/css/media.css" rel="stylesheet"/>
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>
		<script type="text/javascript" language="javascript">
    		function change(img){
    			img.src = "imageCode.action?date="+new Date().getTime();
    		}
    	</script>
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
    <h2 class="about_h">您现在的位置是：<a href="../manage/article">后台首页</a>><a href="#">后台登录</a></h2>
    <div class="template">
      <h3>
        <p><span>后台登陆</span></p>
        <a href="#" target="_blank" class="more"></a> 
      </h3>
       <div style="font-size:16pt;margin:0 auto;">
       <form action="../manage/toLogin" method="post" >
      		<table style="margin:80px auto;">
      			<tr>
      				<td>账&nbsp;&nbsp;号:</td>
      				<td ><input name="account" class="loginInput"/></td>
      				<td><span><s:property value="pwdError"/></span></td>
      			</tr>
      			<tr>
      				<td>密&nbsp;&nbsp;码:</td>
      				<td><input name="password"  type="password" class="loginInput"/></td>
      				<td></td>
      			</tr>
      			<tr>
      				<td>验证码:</td>
                    <td style="width:70px"><input name="imageCode" type="text"  class="loginInput"  style="width:98px;"/><img src="imageCode.action" onclick="change(this)" alt="验证码" title="点击更换" style="float:right;"/></td>
      				<td><span><s:property value="errorMsg"/></span></td> 
      			</tr>
      			<tr>
      				<td colspan="2" style="text-align:center;"><input type="submit" value="登&nbsp;录" class="loignButton"/></td>
      			</tr>
      		</table>
      </form>
      </div>
  </article>
  <script src="../include/js/silder.js"></script>
  <div class="clear"></div>
  <!-- 清除浮动 --> 
</div>
</body>
</html>
