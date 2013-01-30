<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>商城后台管理系统</title>
<#include "/common/head.ftl"/>
<link href="${base}/root/res/common/css/sys.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
if(top!=this) {
	top.location=this.location;
}
$(function() {
	$("#username").focus();
});
</script>
<style type="text/css">
body{margin:0;padding:0;font-size:12px;background:url(${base}/root/res/admin/img/login/bg.jpg) top repeat-x;}
</style>
</head>
<!-- #D3E7FF -->
<body onmousemove="HideMenu()" oncontextmenu="return false" ondragstart="return false" onselectstart ="return false" onselect="document.selection.empty()" oncopy="document.selection.empty()" onbeforecopy="return false" onmouseup="document.selection.empty()">
<form id="jvForm" action="${base}/manage/login.a" method="post">
<table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="170">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="130" height="80" valign="top">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td></td>
              </tr>
              <tr>
                <td></td>
              </tr>
            </table>
          </td>
          <td width="20" align="right" valign="bottom">
          
          </td>
          <td valign="top" align="left">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr align="center">
                <td height="10" align="center" valign="bottom"><h5 style="margin-right:190px">商城后台管理</h5></td>
              </tr>
              <tr>
                <td>
                <div>
<#if errors??>
	<ul>
	<#list errors as error><li>${error}</li></#list>
	</ul>
</#if>
                </div>
                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="5">
                    <tr>
                      <td width="61" height="40" align="right"><strong> 用户名：</strong></td>
                      <td width="211" ><input type="text" id="username" name="username" vld="{required:true}" value="admin" maxlength="100" class="input1"/></td>
                    </tr>
                    <tr>
                      <td height="40" align="right"><strong>密&nbsp; 码：</strong></td>
                      <td ><input name="password" type="password" id="password" maxlength="32" vld="{required:true}" value="123" class="input3"/></td>
                    </tr>
                    <tr align="bottom">
                      <td height="40" align="right"><strong>验证码：</strong></td>
                      <td>
                      <input name="captcha" type="text" id="captcha" vld="{required:true}" class="input4"/>
                      <img src="${base}/captcha.svl" onclick="this.src='${base}/captcha.svl?d='+new Date()" style="height:24px;margin-top:2px;align:left;"/>
                      </td>
                    </tr>
                  </table></td>
              </tr>
                     <tr>
                      <td height="40">
                      	<div  style="margin-left:130px;">
					    <input type="image" src="${base}/root/res/admin/img/login/login.gif" name="submit" />
                        &nbsp; &nbsp; 
                        <img align="bottom" name="reg" style="cursor: pointer" src="${base}/root/res/admin/img/login/reset.gif" onclick="document.forms[0].reset()" />
                        </div> 
                        </td>
                    </tr>
              
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
<#include "/common/alert_message.ftl"/>
</body>
</html>
