<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.legendshop.core.helper.RealPathUtil"%>
<%@page import="com.legendshop.core.helper.PropertiesUtil"%>
<%@ include file="/WEB-INF/pages/common/back-common.jsp"%>
<%@ include file="/WEB-INF/pages/common/taglib.jsp"%>
<%@ taglib uri="/WEB-INF/tld/auth.tld" prefix="auth"%>
<%@ taglib uri="/WEB-INF/tld/options.tld" prefix="option"%>
<%@ taglib uri="/WEB-INF/tld/displaytag.tld" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  		<script type='text/javascript' src="<ls:templateResource item='/dwr/interface/CommonService.js'/>"></script>
		<script type='text/javascript' src="<ls:templateResource item='/dwr/engine.js'/>"></script>
		<script type='text/javascript' src="<ls:templateResource item='/dwr/util.js'/>"></script>
		<script src="<ls:templateResource item='/common/js/jquery.js'/>" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/common/js/top.js" type="text/javascript"></script>
  		<script src="<ls:templateResource item='/common/default/js/alternative.js'/>" type="text/javascript"></script>
<title>LegendShop后台首页</title>
</head>
<body  class="bodymargin">
    <table class="${tableclass}" style="width: 100%;">
    <thead>
    	<tr><td><a href="<ls:url address='/admin/index'/>" target="_parent">首页</a> &raquo; 首页管理</td></tr>
    </thead>
    </table>
     <div align="center">
			<table style="border: 0px;">
				<tr>
					<td>
						<table align="center" class="${tableclass}" id="col1">
							<thead>
								<tr class="sortable">
									<th colspan="2">
										<div align="center">
											软件信息
										</div>
									</th>
								</tr>
							</thead>
							<tr>
								<td width="150px">
									当前版本
								</td>
								<td>
									Shop ${applicationScope.LEGENDSHOP_VERSION}, &nbsp;
									<c:choose>
										<c:when test="${applicationScope.LEGENDSHOP_VERSION == applicationScope.LEGENSHOP_LICENSE.newestVersion}">
											当前为最新版本
										</c:when>
										<c:otherwise>
											<font color="#BD1205">
											<c:if test="${applicationScope.LEGENSHOP_LICENSE.newestVersion != null}">
												最新版${applicationScope.LEGENSHOP_LICENSE.newestVersion} 
											</c:if>
											<a href="${applicationScope.LEGENDSHOP_DOMAIN_NAME}" target="_blank">更新系统</font></a>
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
							<tr>
								<td>
									官方网站
								</td>
								<td>
									<a href="http://www.shop.cn" target="_blank">http://www.shop.cn</a>
								</td>
							</tr>
							<tr>
								<td>
									交流论坛
								</td>
								<td>
									<a href="http://www.shop.cn/club" target="_blank">http://www.shop.cn/club</a>
								</td>
							</tr>
							<auth:auth ifAllGranted="F_VIEW_ALL_DATA">
							<tr>
								<td>
									系统安装路径
								</td>
								<td><%=PropertiesUtil.getSystemRealPath()%></td>
							</tr>
							<tr>
								<td>
									图片安装路径
								</td>
								<td><%=RealPathUtil.getBigPicRealPath()%></td>
							</tr>
							</auth:auth>
							<c:if test="${licenseDesc != null}">
							<tr>
								<td>
									软件说明
								</td>
								<td style="color: #BD1205;">
									当前版本：${licenseDesc}
									<c:if test="${needUpgrade}">
										<c:if test="${applicationScope.LEGENSHOP_LICENSE != null && applicationScope.LEGENSHOP_LICENSE.expireDate != null && '' != applicationScope.LEGENSHOP_LICENSE.expireDate}">
											, 有效期至：${applicationScope.LEGENSHOP_LICENSE.expireDate}
										</c:if>
										<a href='javascript:openScript("${pageContext.request.contextPath}/admin/license/upgrade${applicationScope.WEB_SUFFIX}","320","150")'>[升级]</a>
									</c:if>
								</td>
							</tr>
							</c:if>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table align="center" class="${tableclass}" id="col2"  style="padding: 0px;width: 80%">
							<thead>
								<tr class="sortable">
									<th colspan="2">
										<div align="center">
											商城信息
										</div>
									</th>
								</tr>
							</thead>
							<c:choose>
								<c:when test="${userInfo.shopDetail != null}">
								<tr>
								<td width="150px">
									当前商城名称
								</td>
								<td>
								<c:choose>
									<c:when test="${userInfo.shopDetail.siteName != null}">${userInfo.shopDetail.siteName}</c:when>
									<c:otherwise>
										您尚未设置商城信息，请<a href="${pageContext.request.contextPath}/admin/shopDetail/load/${userInfo.shopDetail.shopId}${applicationScope.WEB_SUFFIX}">&nbsp;设置</a>
									</c:otherwise>
								</c:choose>
								</td>
							</tr>
							<tr>
								<td>
									当前商城地址
								</td>
								<td>
								<c:choose>
									<c:when test="${userInfo.shopDetail.province == null or userInfo.shopDetail.city == null or userInfo.shopDetail.area == null}">
										您尚未设置商城信息，请<a href="${pageContext.request.contextPath}/admin/shopDetail/load/${userInfo.shopDetail.shopId}${applicationScope.WEB_SUFFIX}">&nbsp;设置</a>
									</c:when>
									<c:otherwise>
										${userInfo.shopDetail.province}/${userInfo.shopDetail.city}/${userInfo.shopDetail.area}
									</c:otherwise>
								</c:choose>
									
								</td>
							</tr>
							<tr>
								<td>
									未处理订单数
								</td>
								<td>
									<c:choose>
										<c:when test="${userInfo.processingOrderNum == 0}">${userInfo.processingOrderNum}</c:when>
										<c:otherwise><font color="#BD1205;">${userInfo.processingOrderNum}</font></c:otherwise>
									</c:choose>
									 &nbsp; <a href="${pageContext.request.contextPath}/admin/order/query${applicationScope.WEB_SUFFIX}">[查看订单]</a>
								</td>
							</tr>
							<tr>
								<td>
									未读消息
								</td>
								<td>
									<c:choose>
										<c:when test="${userInfo.unReadMessageNum == 0}">${userInfo.unReadMessageNum}</c:when>
										<c:otherwise><font color="#BD1205;">${userInfo.unReadMessageNum}</font></c:otherwise>
									</c:choose>
									 &nbsp; <a href="${pageContext.request.contextPath}/admin/userComment/query${applicationScope.WEB_SUFFIX}?status=0">[查看消息]</a>
								</td>
							</tr>
							<tr>
								<td>
									商品数量
								</td>
								<td>${userInfo.shopDetail.productNum} (下线商品数量：${userInfo.shopDetail.offProductNum})&nbsp; <a href="<ls:url address='/admin/product/query'/>">[查看商品]</a></td>
							</tr>
							<tr>
								<td>
									新闻数量
								</td>
								<td>${userInfo.articleNum} &nbsp; <a href="${pageContext.request.contextPath}/admin/news/query${applicationScope.WEB_SUFFIX}">[查看新闻]</a></td>
							</tr>
								
								</c:when>
								<c:otherwise>
								<auth:auth ifAllGranted="F_VIEW_ALL_DATA">
								<tr>
								<td width="150px">
									用户总数
								</td>
								<td>
									${userInfo.userTotalNum} &nbsp; <a href="${pageContext.request.contextPath}/system/userDetail/query${applicationScope.WEB_SUFFIX}">[用户管理]</a>
								</td>
							</tr>
							<tr>
								<td>
									商家总数 
								</td>
								<td>
									${userInfo.shopTotalNum} &nbsp; <a href="${pageContext.request.contextPath}/admin/shopDetail/query${applicationScope.WEB_SUFFIX}">[商城管理]</a>
								</td>
							</tr>
								</auth:auth>
								<auth:auth ifNotGranted="F_VIEW_ALL_DATA">
								<tr>
								<td colspan="2">
									你还没有开通商城  &nbsp; <a href="${pageContext.request.contextPath}/openShop${applicationScope.WEB_SUFFIX}">[点击开通]</a>
								</td>
							</tr>
								</auth:auth>
								</c:otherwise>
							</c:choose>
						</table>
					</td>
				</tr>
		
				<tr>
					<td>
						<table align="center" class="${tableclass}" style="border:0px;padding: 0px;width: 80%">
						
								<tr class="sortable">
									<td colspan="2" style="font-weight: bold;">
										
											快捷方式
										
									</td>
								</tr>
							
						
							<tr>
								<td width="100px">
									<a href="<ls:url address='/admin/product/query'/>">商品管理</a>
								</td>
								<td>
									增加，删除，修改商品。每个商品有若干固定属性、产品相关图片、相关产品等，另外还可以设置动态属性和动态参数
								</td>
							</tr>
							<tr>
								<td>
									<a href="${pageContext.request.contextPath}/admin/sort/query${applicationScope.WEB_SUFFIX}">商品类型管理</a>
								</td>
								<td>
									分为3级分类，第一级分类需要上传一副图片用于展示，第三级分类下挂有商品品牌
								</td>
							</tr>
							<tr>
								<td>
									<a href="${pageContext.request.contextPath}/admin/paytype/query${applicationScope.WEB_SUFFIX}">支付管理</a>
								</td>
								<td>
									增加您的支付宝账户（支持即时到帐和担保支付），设置货到付款等
								</td>
							</tr>
							<tr>
								<td>
									<a href="${pageContext.request.contextPath}/admin/indexjpg/query${applicationScope.WEB_SUFFIX}">首页图片管理</a>
								</td>
								<td>
									首页中上部广告图片，文字均可以加上超链接
								</td>
							</tr>
							<tr>
								<td>
									<a href="${pageContext.request.contextPath}/admin/productcomment/query${applicationScope.WEB_SUFFIX}">评论管理</a>
								</td>
								<td>看看谁对你的商品评论了</td>
							</tr>
							<tr>
								<td>
									<a href="${pageContext.request.contextPath}/admin/visitLog/query${applicationScope.WEB_SUFFIX}">浏览管理</a>
								</td>
								<td>看看谁浏览过你的商城和产品了，方便于做营销</td>
							</tr>
							<tr>
								<td>
									<a href="<ls:url address='/admin/hotsearch/query'/>">热门商品</a>
								</td>
								<td>设置热门商品，将会在一级分类页面中出现</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

     </div>
     
    <script language="javascript">
	$(document).ready(function() {
      $("#col1 tr").each(function(i){
      if(i>0){
         if(i%2 == 0){
             $(this).addClass('even');
         }else{    
              $(this).addClass('odd'); 
         }   
    }
     });   
         $("#col1 th").addClass('sortable'); 
         
    $("#col2 tr").each(function(i){
      if(i>0){
         if(i%2 == 0){
             $(this).addClass('even');
         }else{    
              $(this).addClass('odd'); 
         }   
    }
     });   
         $("#col2 th").addClass('sortable'); 
});
  highlightTableRows("col1");  
  highlightTableRows("col2");  
  
</script>
</body>
</html>