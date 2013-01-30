<%@ page language="java" pageEncoding="UTF-8"%>

<html>
<head>
<#include "/common/head.ftl"/>
<title>${sessionScope.SPRING_SECURITY_LAST_USERNAME} - 后台管理</title>
<style>
body
{
  scrollbar-base-color:#C0D586;
  scrollbar-arrow-color:#FFFFFF;
  scrollbar-shadow-color:DEEFC6;
}
</style>
</head>
<frameset rows="60,*" cols="*" frameborder="no"  framespacing="0">
  <frame src="${base}/admin/top" name="topFrame" scrolling="no">
  <frameset cols="180,*" name="btFrame" id="btFrame" frameborder="NO"  framespacing="0">
    <frame src="${base}/admin/menu/1" noresize name="menu" scrolling="yes">
    <frame src="${base}/admin/dashboard" noresize name="main" scrolling="yes">
  </frameset>
</frameset>
<noframes>
	<body>你的浏览器不支持此框架!</body>
</noframes>
</html>