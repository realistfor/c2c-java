
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<#assign w=JspTaglibs["/META-INF/widget.tld"]>
<#include "/WEB-INF/common/head.ftl"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
    <#--
	<meta name="robots" content="nofollow">
	<meta name="robots" content="noarchive">
	<meta name="Baiduspider" content="noarchive">
    -->
    
    <script type="text/javascript">
    $(document).ready(function(){
		var leftIsNull = $.trim($('#leftcol').html())!='';
		var rightIsNull = $.trim($('#rightcol').html())!='';
		
		if(!leftIsNull) {
			$('#leftcol').remove();
			$('#midcol').addClass('themes-16');
			$('#rightcol').addClass('themes-8');
		}
		if(!rightIsNull) {
			$('#rightcol').remove();
			$('#leftcol').removeClass('themes-left');
			$('#leftcol').addClass('themes-5');
			$('#midcol').addClass('themes-20');
			$('#midcol').addClass('last');
		}
		if(!leftIsNull && !rightIsNull) {
			$('#leftcol').remove();
			$('#rightcol').remove();
			$('#midcol').addClass('themes-24');
			$('#midcol').addClass('last');
		}
		if(leftIsNull && rightIsNull) {
			$('#midcol').removeClass('themes-16');
			$('#rightcol').removeClass('last');
			$('#rightcol').removeClass('themes-8');
			
			$('#midcol').addClass('themes-15');
			$('#rightcol').addClass('last');
			$('#rightcol').addClass('right-column');
			$('#rightcol').addClass('themes-5');
			
		}
    });
	</script>
</head>
<body>
	<div class="body-box">
		<div id="head">
			<@w.widgetborder name="maxHeader" openWith='<div id="max-top" class="widget">' closeWith='</div>'/>
			
			<@w.widgetborder name="top" openWith='<div id="logo-bar" class="widget">' closeWith='</div>'/>
			
		</div>
		<div id="body">
			<@w.widgetborder name="leftColumn" openWith='<div id= "leftcol" class="themes-left left-column">' closeWith='</div>' />
			
			<@w.widgetborder name="mainColumn" openWith='<div id="midcol" class="themes-16">' closeWith='</div>' />
			
			<br class="clear"/>
		</div>
		<div id="foot">
			<@w.widgetborder name="bottom"/>
		</div>
	</div>
</body>
<head>
	<#if siteInfo.combTitle??>
	<title>${siteInfo.combTitle}－${siteInfo.title}</title>
	<#else>
	<title>${siteInfo.title}</title>
	</#if>
    <link rel="shortcut icon" href="${base}/root/images/favicon.ico"/>
    <link rel="icon" type="image/gif" href="${base}/root/images/favicon_one.gif">
    <meta name="Keywords" content="${siteInfo.keywords?default('祝网')}"/>
    <meta name="Description" content="${siteInfo.description}"/>
    
</head>
</html>