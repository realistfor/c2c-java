<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<title>用户注册</title>
<script type="text/javascript">

function isEmail(str){
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	return reg.test(str);
}

 function isOpenShop(obj){
 	if(obj.checked){
 		document.getElementById("shopDetail").style.display="block";
 	}else{
 	 	document.getElementById("shopDetail").style.display="none";
 	}
 }
		
   function changeType(obj){
 	if(obj == 1){
 		document.getElementById("trafficPicDiv").style.display="block";
 	}else{
 	 	document.getElementById("trafficPicDiv").style.display="none";
 	}
 }	
</script>

   <table width="100%" cellspacing="0" cellpadding="0" class="tables"> 
                <tr>
                  <td class="titlebg" >用户注册</td>
                </tr>
                <tr> 
                  <td height="2" bgcolor="#FFFFF6"><table width="100%" cellspacing="0" cellpadding="0" height="100%">
                      <tr> 
                        <td align="left">
                        <@s.bind "registerBean" />
                        <form action="${base}/user/register" method="post" name="userRegForm" id="userRegForm" class="register-form">
                        <div style="margin-left: 100px">
                        <UL>
	                         <li>以下信息请如实添写，带<font color="red">*</font>必须要填写</li><li>请填写真实资料，本站为每个用户保密资料</li><li>用户名是用户登录的凭证，一旦注册则无法更改</li><li>用户邮件是取回密码的凭证，一旦注册则无法更改</li><li>请填写真实邮箱，找回密码时用到</li><li>请填写真实姓名，用于购物</li>
	                         </UL>
							<#if showErrors?? && tipMessage.field=='sensits'>
								<li>${tipMessage.errorMsg!''}</li>
							</#if>
                        </div>
                        <br>
                            <table width="100%" align="center" cellpadding="0" cellspacing="0" style="margin-bottom: 6">
                              <tr>
                                <td width="33%" height="29"><div align="right">
                               <font color="#ff0000">*</font>用户名： </div></td>
                                <td width="67%"><div align="left">
                                <input class="input" type="text" name="name" id="name" maxlength="15" />
                                  <span id="userAreardyExists"></span>
                                  </div></td>
                              </tr>
                              <tr> 
                                <td height="29"><div align="right"><font color="#ff0000">*</font>真实姓名：</div></td>
                                <td height="29">
                                  <div align="left">
                                     <input class="input" type="text" name="nickName" id="nickName" size="20" value="" maxlength="30">
                                  </div>
                                  </td>
                              </tr>
                              <tr> 
                                <td height="29"><div align="right">
                                <font color="#ff0000">*</font>密&nbsp;&nbsp;码(不能少于6位)： </div></td>
                                <td height="29"><div align="left"> 
                                    <input class="input" type="password" name="password" id="password" size="20" maxlength="50">
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="29"><div align="right"><font color="#ff0000">*</font>密码确认： </div></td>
                                <td height="29"><div align="left">
                                    <input class="input" type="password" name="rePassword" id="rePassword" size="20" maxlength="50">
                                  </div></td>
                              </tr>
                              <tr> 
                                <td height="29"><div align="right"><font color="#ff0000">*</font>邮箱：</div></td>
                                <td height="29"><div align="left"> 
                                    <input class="input" type="text" name="userMail" id="userMail" value="" maxlength="50">
                                    <span id="mailAreardyExists"></span>
                                  </div></td>
                              </tr>
                              
                               <tr>
	                              <td><br><div align="right">免费开店：</div>
	                              </td>
	                              <td><br><input type="checkbox" id="openShop" name="openShop" onclick="javascript:isOpenShop(this)" style="margin-left: 10px"/></td>
                              </tr>   
                            
                              <tr><td colspan="2" width="100%">
                              <div id="shopDetail" style="display: none">
                                <table width="100%"  cellpadding="0" cellspacing="0">
                               <tr>
	                              <td colspan="2">
	                           <div style="margin-left: 100px">
			                        <li>请上传真实的身份证照片和身份证号码</li><li>如果是商家请上传营业执照</li><li>请填写真实商城名称和地址</li>

                               </div>
                               <br>
	                              </td>
                              </tr>
                                <tr>
                                <td width="33%" height="29"><div align="right">
                                <font color="#ff0000">*</font>商城名称：</div></td>
                                <td width="67%" height="29"><div align="left">
                                    <input name="siteName" id="siteName" class="input"  maxlength="50"/>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="29"><div align="right"><font color="#ff0000">*</font>身份证号码：</div></td>
                                <td height="29"><div align="left"> 
                                    <input type="text" name="idCardNum" id="idCardNum" class="input" maxlength="20"  maxlength="50"/>
                                  </div></td>
                              </tr> 
                              <tr>
                                <td height="29"><div align="right">
                                <font color="#ff0000">*</font>地址：</div></td>
                                <td height="29"><div align="left"> 
                                    <input style="WIDTH: 250px;" name="postAddr" id="postAddr" size="20" class="input"  maxlength="300"/>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="29"><div align="right"><font color="#ff0000">*</font>商城类型：</div></td>
                                <td height="29"><div align="left"> 
                                    &nbsp;&nbsp;商家<input type="radio" name="siteType" id="siteType" value="1" onclick="javascript:changeType(1)"/>&nbsp;
                                    个人 <input type="radio" name="shopDetail.type" value="0" onclick="javascript:changeType(0)"/>
                                  </div></td>
                              </tr>

                              <tr>
                                <td height="29"><div align="right"><font color="#ff0000">*</font>上传身份证照片：</div></td>
                                <td height="29"><div align="left"> 
                                    <input type="file" style="WIDTH: 250px;margin-left: 10px" name="trafficPicFile" id="trafficPicFile" class="input" />
                                  </div></td>
                              </tr>
                              <tr>                            
                                <td height="29" colspan="2">
                                  <div id="trafficPicDiv" style="display: none">
                                <table width="100%" cellpadding="0" cellspacing="0"><tr><td width="33%">
	                                 <div align="right"><font color="#ff0000">*</font>上传营业执照照片：<br>
	                                </div>  
	                                </td>
	                                <td> <input type="file" style="WIDTH: 250px;margin-left: 10px;" name="trafficPicFile" id="trafficPicFile" class="input" /></td>
	                                </tr>
                                </table>
                    			</div>
                                </td>
                              </tr> 
                                </table>
                                </div>
                              </td></tr>
                              <tr> 
                                <td height="29"><div align="right"></div></td>
                                <td height="29"><div align="left"> 
                                   <a href="${base}/user/regitem" target="_blank">用户条款</a><input type="checkbox" id="agreement" name="agreement" checked="checked"/>
                                 
                                  </div></td>
                              </tr>                              
                              <tr>
                                <td height="35" colspan="2"><div align="center"> 
                                    <table width="100%" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td><div align="left"> 
                                            <input type="submit" value='确认' class="s" style="margin-left: 250px"/>
                                            <input type="reset" value='重置' class="s">
                                          </div>
                                          </td>
                                </tr>
                                    </table>
                                  </div></td>
                              </tr>
                            </table>
                          </form>
                         </td>
                      </tr>
                    </table></td>
                </tr>
              </table>