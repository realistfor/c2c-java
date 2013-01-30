
<#if requestScope??>
<table width="954px" cellpadding="0" cellspacing="0" style="margin-top: 5px" align="center">
<tr><td align="center">
<table cellpadding="2" cellspacing="2" >
	<tr>
	<#list externalLinkList.result as el>
	  <td height="40px" align="center">
	      		<a href="${el.url}" target=_blank title="${el.content}">
	      			<#if el.picture??>
	      			<img src="${base}/photoserver/photo/${el.picture}" title="${el.wordlink}" width="88px" height="31px"/><br>${el.wordlink}
	      			<#else>
	      			${el.wordlink}
	      			</#if>
	      		</a>   
	    </td>
	</#list>
	</tr>
  </table>
  </td></tr></table>
 </#if> 
  <#if shopDetail??>
		<table width="954px" class="tables" style="margin-top: 5px" cellpadding="0" cellspacing="0">
		<tr>
		 <td class="titlebg">${shopDetail}</td>
		  </tr>
		  <tr>
		 <td>
		 <#include "copyright.ftl"/>
		</td>
		</tr>
		</table> 
	<#else>	
    	<#include "copyright.ftl"/>
 	</#if>

<br/>
