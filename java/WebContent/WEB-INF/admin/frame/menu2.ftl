<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/common/taglib.jsp"%>
<html>
<head>
<title>menu</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/theme/skin/css/base.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/theme/skin/css/menu.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script language='javascript'>var curopenItem = '1';</script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/plugins/theme/skin/js/frame/menu.js"></script>
</head>
<body target="main">
<table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0'>
  <tr>
    <td style='padding-left:3px;padding-top:8px' valign="top">
	<!-- Item 1 Strat -->
  <dl class='bitem'>
        <dt onClick='showHide("items1_2")'><b>商城管理</b></dt>
        <dd style='display:block' class='sitem' id='items1_2'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/shopDetail/query${applicationScope.WEB_SUFFIX}' target='main'>商城管理</a></div>
                <div class='flrct'><a href='${pageContext.request.contextPath}/admin/shopDetail/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='商城管理' title='商城管理'/></a> </div>
              </div>
            </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/paytype/query${applicationScope.WEB_SUFFIX}' target='main'>支付管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/paytype/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='支付方式管理' title='支付方式管理'/></a> </div>
              </div>
            </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/newsCategory/query${applicationScope.WEB_SUFFIX}' target='main'>栏目管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/newsCategory/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='新闻栏目管理' title='新闻栏目管理'/></a> </div>
              </div>
            </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/news/query${applicationScope.WEB_SUFFIX}' target='main'>新闻管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/news/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='新闻管理' title='新闻管理'/></a> </div>
              </div>
            </li>
           <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/pub/query${applicationScope.WEB_SUFFIX}' target='main'>公告管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/pub/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='公告管理' title='公告管理'/></a> </div>
              </div>
            </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/logo/query${applicationScope.WEB_SUFFIX}' target='main'>Logo管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/logo/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='Logo管理' title='Logo管理'/></a> </div>
              </div>
            </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/advertisement/query${applicationScope.WEB_SUFFIX}' target='main'>广告管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/advertisement/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='广告管理' title='广告管理'/></a> </div>
              </div>
            </li>
            <c:if test="${'C2C' == applicationScope.BUSINESS_MODE}">
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/myleague/query${applicationScope.WEB_SUFFIX}' target='main'>加盟管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/myleague/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='加盟管理' title='加盟管理'/></a> </div>
              </div>
            </li>
            </c:if>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/externallink/query${applicationScope.WEB_SUFFIX}' target='main'>链接管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/externallink/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='链接管理' title='链接管理'/></a> </div>
              </div>
            </li>
             <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/partner/query${applicationScope.WEB_SUFFIX}'   target='main'>供应商管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/partner/query${applicationScope.WEB_SUFFIX}'  target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='供应商管理' title='供应商管理'/></a> </div>
              </div>
            </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/deliveryCorp/query${applicationScope.WEB_SUFFIX}'   target='main'>物流公司管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/deliveryCorp/query${applicationScope.WEB_SUFFIX}'  target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='物流公司管理' title='物流公司管理'/></a> </div>
              </div>
            </li>
            <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/deliveryType/query${applicationScope.WEB_SUFFIX}'   target='main'>配送方式管理</a></div>
                <div class='flrct'> <a href='${pageContext.request.contextPath}/admin/deliveryType/query${applicationScope.WEB_SUFFIX}'  target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='配送方式管理' title='配送方式管理'/></a> </div>
              </div>
            </li>
         </ul>
        </dd>
      </dl>   
 <dl class='bitem'>
        <dt onClick='showHide("items1_1")'><b>浏览管理</b></dt>
        <dd style='display:block' class='sitem' id='items1_1'>
          <ul class='sitemu'>
             <li>
              <div class='items'>
                <div class='fllct'><a href='${pageContext.request.contextPath}/admin/visitLog/query${applicationScope.WEB_SUFFIX}' target='main'>浏览管理</a></div>
                <div class='flrct'><a href='${pageContext.request.contextPath}/admin/visitLog/query${applicationScope.WEB_SUFFIX}' target='main'><img src='${pageContext.request.contextPath}/plugins/theme/skin/images/frame/gtk-sadd.png' alt='查看用户浏览历史' title='查看用户浏览历史'/></a> </div>
              </div>
            </li>
          </ul>
        </dd>
      </dl>     
      
	  </td>
  </tr>
</table>
</body>
</html>