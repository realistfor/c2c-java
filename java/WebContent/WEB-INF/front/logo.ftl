<#--在web.module.LogoWidget处理-->
<div id="${widgetConfig.id}">
<table border="0" cellpadding="0" cellspacing="0">
	<tr style="background-color:#FFFFFF;"> <#--width:980-->
		<td width="150">
			<table>
			<tr>
			<td><#--width:830 rowspan="4" -->
			<a href="${base}">
			<img id="logo" src="${base}/root/res/admin/img/admin/logo.gif" height="70" width="150" alt=""/>
			</a>
			</td>
			</tr>
			</table>
		</td>
		<td  width="500">
			<table>
			<tr>
			<td><#--width:300 colspan="2"-->
			<a href="${base}/user/login">[登录]</a> <a href="${base}/user/register" class="n2">[注册]</a>
			</td>
			</tr>
			<tr>
				<td style="background-color:#FFFFFF;">
				</td>
			</tr>
			<tr>
				<td align="left" height="25" style="background-color:#FFFFFF;">
					<span id=localtime></span>
				</td>
			</tr>
			</table>
		</td>
		<td  align="left">
			<table>
			<tr>
			<tr> <#--width:980-->
				<td width="150"><#--width:830-->
				<a href="http://jverp.honw.com.cn/jverp/verp/login.do?returnUrl=/verp/index.do" target="_blank">
				<img id="logo" src="${base}/root/res/default/jerp.gif" height="70" width="150" alt="跨时代的ERP"/>
				</a>
				</td>
			</tr>
			</tr>
			</table>
		</td>
		<td  align="right">
			<table>
			<tr>
			<tr> <#--width:980-->
				<td width="150"><#--width:830-->
				</td>
			</tr>
			</tr>
			</table>
		</td>
	</tr>
	
</table>
<script type="text/javascript">
    function showLocale(objD)
	{
		var str,colorhead,colorfoot;
		var yy = objD.getFullYear();
		if(yy<1900) yy = yy+1900;
		var MM = objD.getMonth()+1;
		if(MM<10) MM = '0' + MM;
		var dd = objD.getDate();
		if(dd<10) dd = '0' + dd;
		var hh = objD.getHours();
		if(hh<10) hh = '0' + hh;
		var mm = objD.getMinutes();
		if(mm<10) mm = '0' + mm;
		var ss = objD.getSeconds();
		if(ss<10) ss = '0' + ss;
		var ww = objD.getDay();
		if  ( ww==0 )  colorhead="<font color=\"#FF0000\">";
		if  ( ww > 0 && ww < 6 )  colorhead="<font color=\"#373737\">";
		if  ( ww==6 )  colorhead="<font color=\"#008000\">";
		if  (ww==0)  ww="星期日";
		if  (ww==1)  ww="星期一";
		if  (ww==2)  ww="星期二";
		if  (ww==3)  ww="星期三";
		if  (ww==4)  ww="星期四";
		if  (ww==5)  ww="星期五";
		if  (ww==6)  ww="星期六";
		colorfoot="</font>"
		str = colorhead + yy + "-" + MM + "-" + dd + " " + hh + ":" + mm + ":" + ss + "  " + ww + colorfoot;
		return(str);
	}
    function tick()
	{
		var today;
		today = new Date();
		document.getElementById("localtime").innerHTML = showLocale(today);
		window.setTimeout("tick()", 1000);
	}
	window.onload=tick;
</script>
</div>