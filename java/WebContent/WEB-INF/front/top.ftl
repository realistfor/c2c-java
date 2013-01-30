
<script>
 	 function form1_onsubmit() {
      var words = document.getElementById("headerkeywordp");
      if( words.value == null || words.value == '' || words.value == '关键字'){
      	alert('请输入要搜索的内容');
      	words.focus();
      	return false;
      }
      return true;
 	 }

	function addMyLeague(userName,shopName) {
		  if(confirm('加盟 '+shopName+' ?')){
	        CommonService.addMyLeague(userName,shopName,'', function(retData){
		       switch(retData){
		       case 0:
		    	   alert('新增加盟店成功') ;
		    	   break;
		       default:
		    	   alert('新增加盟店将会生效，请稍等') ;	    	   	    	   		    	   	       
		       }	       
		    }) ;
	    }
	}
	
</script>


<div id="header">
	<div id="logo">
			<a href="${logo.url}">
			<#if logo.id??>
			     <img style="Clear: Both; Border: 0px" src="${base}/photoserver/photo/${logo.banner}" height="65px" title="${logo.memo}" />
			 <#else>
			     <img src="${base}/root/res/common/img/logo.gif" height="65px" title="商城"/>
			</#if>
		  </a>
	</div>
	<div>
	   <ul id="topnews">
		   <c:forEach items="${newsTopList}" var="newsTop">
		       <li><a href="<ls:url address='/news/${newsTop.newsId}'/>">${newsTop.newsTitle}</a></li>
		   </c:forEach>
       </ul>
    </div>
	<div>
	<ul id="topnav">
	<#if sessionScope.SPRING_SECURITY_LAST_USERNAME??>
	   <#if shopExists && 'C2C' == applicationScope.BUSINESS_MODE>
               <li><a href="<ls:url address='/shop/${sessionScope.SPRING_SECURITY_LAST_USERNAME}'/>"><fmt:message key="myShop"/></a></li>
        </#if>
	   <@auth ifAnyGranted="F_ADMIN">
	   	<#if canbeLeagueShop??>
	   	<li><a href='javascript:addMyLeague("${sessionScope.SPRING_SECURITY_LAST_USERNAME}","${sessionScope.shopName}")'><fmt:message key="addLeague"/><fmt:message key="this.shop"/></a></li>
	   	</#if>
	     <li><a href="/admin/index"><b>后台管理</b></a></li>
       </@auth>
      	<li><a href="/leaveword">退出</a></li>
		<li><a href="/p/order">我的订单</a></li>
	</#if>
		<li class="navCartSum"><a href="/p/buy">购物车</a></li>	
		<li class="hl"><a href="/allNews">新闻中心</a></li>
	</ul>
	</div>
	<div id="headerlogin">
		<span>
	
		   <#if sessionScope.SPRING_SECURITY_LAST_USERNAME??>
		  	<span><b>${sessionScope.SPRING_SECURITY_LAST_USERNAME}</b></span>
		   	<a href="/p/myaccount")>[我的账户]</a>
			<a href="${base}/p/logout" target="_parent">[退出]</a>
		   <#else>
		  	<a href="/p/login">[登录]</a>
		   </#if>
		
			<a href="/reg" class="n2">[免费注册]</a>
		</span>
	</div>
</div>
<div id="headernav">
	<ul>
		<li class="n2"><a href="<ls:url address='/index'/>"><fmt:message key="shop.index"/></a></li>
		<li><a href="<ls:url address='/group/index'/>" target="_blank"><fmt:message key="group.on"/></a></li>
		<#if 'C2C' == applicationScope.BUSINESS_MODE >
        <li class="n2"><a href="<ls:url address='/league'/>"><fmt:message key="leagueShop"/></a></li>
        </#if>
        <#list newsSortList.result as newsSort>
	       <li><a href="${base}/news/${newsSort.newsId}">${newsSort.newsTitle}</a></li>
	   </#list>
	</ul>
	<ul class="nright">
        <#list requestScope.sortList as sort>
	 	<li><a href="${base}/sort/${sort.sortId}">${sort.sortName}</a></li>
	   </#list>
	</ul>
</div>
<form method="post" onsubmit="return form1_onsubmit();" action="${base}/search" id="searchForm" name="searchForm" style="margin: 0px;padding: 0px">
<div id="searchwrapper">
	<div id="qchannel">
	<div id="headersearch">
				<input type="hidden" id="curPageNOTop" name="curPageNOTop" value="${searchForm.curPageNOTop}"/>
				<select name="sortId" id="headersearchcategory" style="margin-right: 3px">
					<option id="allProduct" value="0"><fmt:message key="all.product"/></option>
					<#list requestScope.sortList as sort>
						   <#if CurrentSortId == sort.sortId>
						   	<option id="${sort.sortId}" value="${sort.sortId}" class="c" selected="selected">${sort.sortName}</option>
						   <#else>
						  	<option id="${sort.sortId}" value="${sort.sortId}" class="c">${sort.sortName}</option>
						   </#if>
				    </#list>
				</select>
					<input type="text" value="${searchForm.keyword}" name="keyword" id="headerkeywordp"  class="input2" onMouseOver="this.focus()" onBlur="if (this.value =='') this.value='关键字'" onFocus="this.select()" onClick="if (this.value=='关键字') this.value=''"/>
			 		<input type="submit" value='搜索' class="input3" onmouseover="this.style.background='#99CC00'" onmouseout="this.style.background='#FFCC00'"/> 
					<a href="javascript:advanceSearch('${base}')" style="margin: 6px"><font color="white"><fmt:message key="advance.search"/></font></a>
		
		</div>
		<div id="topcatalog">
			<h2>
			    <a href='#' onclick="javascript:bookmark('${shopDetail.userName} - ${shopDetail.siteName}','${base}/shop/${shopDetail.userName}${applicationScope.WEB_SUFFIX}');">
                    收藏
                </a>
			</h2>
	  </div>
	  <div>
		<ul id="favourite">
			<li><center><a href="${base}/shopcontact?shop=${sessionScope.shopName}" title="${sessionScope.shopName}">${sessionScope.shopName}</a></center></li>
		</ul>
		</div>
	</div>
</div>
</form>