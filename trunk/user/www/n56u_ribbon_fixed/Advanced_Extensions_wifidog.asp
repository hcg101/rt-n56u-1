<!DOCTYPE html>

<html>

<head>

<title>亿欣WIFI认证服务配置</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta http-equiv="Pragma" content="no-cache">

<meta http-equiv="Expires" content="-1">



<link rel="shortcut icon" href="images/favicon.ico">

<link rel="icon" href="images/favicon.png">

<link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="/bootstrap/css/main.css">

<link rel="stylesheet" type="text/css" href="/bootstrap/css/engage.itoggle.css">



<script type="text/javascript" src="/jquery.js"></script>

<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="/bootstrap/js/engage.itoggle.min.js"></script>

<script type="text/javascript" src="/state.js"></script>

<script type="text/javascript" src="/general.js"></script>

<script type="text/javascript" src="/itoggle.js"></script>

<script type="text/javascript" src="/popup.js"></script>

<script type="text/javascript" src="/help.js"></script>

<script>

var $j = jQuery.noConflict();



$j(document).ready(function() {

    init_itoggle('wifidog_enable');

	init_itoggle('wifidog_Daemon');
    init_itoggle('wifidog_enableyx');
    init_itoggle('wifidog_enablewx');
    init_itoggle('wifidog_enablewx5g');
	init_itoggle('wifidog_enablewxguest');
	init_itoggle('wifidog_enablewx5gguest');


});



</script>

<script>



<% login_state_hook(); %>



function initial(){

    show_banner(1);

    show_menu(5,11,3);

    show_footer();



}



function applyRule(){

    if(validForm()){

        showLoading();



        document.form.action_mode.value = " Apply ";

        document.form.current_page.value = "/Advanced_Extensions_wifidog.asp";

        document.form.next_page.value = "";       

        document.form.submit();

    }

}



function validForm(){





    return true;

}



function done_validating(action){

    refreshpage();

}



</script>

<style>

    .table th, .table td{vertical-align: middle;}

    .table input, .table select {margin-bottom: 0px;}

</style>

</head>



<body onload="initial();" onunLoad="return unload_body();">



<div class="wrapper">

    <div class="container-fluid" style="padding-right: 0px">

        <div class="row-fluid">

            <div class="span3"><center><div id="logo"></div></center></div>

            <div class="span9" >

                <div id="TopBanner"></div>

            </div>

        </div>

    </div>

    <div id="Loading" class="popup_bg"></div>

    <iframe name="hidden_frame" id="hidden_frame" src="" width="0" height="0" frameborder="0"></iframe>

    <form method="post" name="form" id="ruleForm" action="/start_apply.htm" target="hidden_frame">

    <input type="hidden" name="current_page" value="Advanced_Extensions_wifidog.asp">

    <input type="hidden" name="next_page" value="">

    <input type="hidden" name="next_host" value="">

    <input type="hidden" name="sid_list" value="LANHostConfig;">

    <input type="hidden" name="group_id" value="">

    <input type="hidden" name="action_mode" value="">

    <input type="hidden" name="action_script" value="">

    <div class="container-fluid">

        <div class="row-fluid">

            <div class="span3">

                <!--Sidebar content-->

                <!--=====Beginning of Main Menu=====-->

                <div class="well sidebar-nav side_nav" style="padding: 0px;">

                    <ul id="mainMenu" class="clearfix"></ul>

                    <ul class="clearfix">

                        <li>

                            <div id="subMenu" class="accordion"></div>

                        </li>

                    </ul>

                </div>

            </div>



            <div class="span9">

                <!--Body content-->

                <div class="row-fluid">

                    <div class="span12">

                        <div class="box well grad_colour_dark_blue">

                            <h2 class="box_head round_top">WIFI认证服务配置</h2>

                            <div class="round_bottom">

                                <div class="row-fluid">

                                    <div id="tabMenu" class="submenuBlock"></div>

                                  <div id="tabMenu" class="submenuBlock"></div>



                                  <div class="alert alert-info" style="margin: 10px;">各位代理商禁止使用第三方路由器对接本平台，务必遵守我方商业规则。我方定期检测序列号！！！




								  </div>             

                                    <table width="100%" cellpadding="4" cellspacing="0" class="table">

                                        <tr>

                                            <th colspan="2" style="background-color: #E3E3E3;">开关</th>

                                        </tr>

                                        <tr>

                                            <th width="30%" style="border: 0 none;">开启WIFI认证服务</th>

                                            <td style="border: 0 none;">

                                                <div class="main_itoggle">

                                                    <div id="wifidog_enable_on_of">

                                                        <input type="checkbox" id="wifidog_enable_fake" <% nvram_match_x("", "wifidog_enable", "1", "value=1 checked"); %><% nvram_match_x("", "wifidog_enable", "0", "value=0"); %>  />

                                                    </div>

                                                </div>

                                                <div style="position: absolute; margin-left: -10000px;">

                                                    <input type="radio" value="1" name="wifidog_enable" id="wifidog_enable_1" class="input" value="1" <% nvram_match_x("", "wifidog_enable", "1", "checked"); %> /><#checkbox_Yes#>

                                                    <input type="radio" value="0" name="wifidog_enable" id="wifidog_enable_0" class="input" value="0" <% nvram_match_x("", "wifidog_enable", "0", "checked"); %> /><#checkbox_No#>

                                                </div>

                                            </td>

                                        </tr>

										<tr>

                                            <th width="30%" style="border: 0 none;">守护进程</th>

                                            <td style="border: 0 none;">

                                                <div class="main_itoggle">

                                                    <div id="wifidog_Daemon_on_of">

                                                        <input type="checkbox" id="wifidog_Daemon_fake" <% nvram_match_x("", "wifidog_Daemon", "1", "value=1 checked"); %><% nvram_match_x("", "wifidog_Daemon", "0", "value=0"); %>  />

                                                    </div>

                                                </div>

                                                <div style="position: absolute; margin-left: -10000px;">

                                                    <input type="radio" value="1" name="wifidog_Daemon" id="wifidog_Daemon_1" class="input" value="1" <% nvram_match_x("", "wifidog_Daemon", "1", "checked"); %> /><#checkbox_Yes#>

                                                    <input type="radio" value="0" name="wifidog_Daemon" id="wifidog_Daemon_0" class="input" value="0" <% nvram_match_x("", "wifidog_Daemon", "0", "checked"); %> /><#checkbox_No#>

                                                </div>

                                            </td>

                                        </tr>

 <!--<tr>

                                            <th width="30%" style="border: 0 none;">有线免认证</th>

                                            <td style="border: 0 none;">

                                                <div class="main_itoggle">

                                                    <div id="wifidog_Daemon_on_of">

                                                        <input type="checkbox" id="wifidog_enableyx_fake" <% nvram_match_x("", "wifidog_enableyx", "1", "value=1 checked"); %><% nvram_match_x("", "wifidog_enableyx", "0", "value=0"); %>  />

                                                    </div>

                                                </div>

                                                <div style="position: absolute; margin-left: -10000px;">

                                                    <input type="radio" value="1" name="wifidog_enableyx" id="wifidog_enableyx_1" class="input" value="1" <% nvram_match_x("", "wifidog_enableyx", "1", "checked"); %> /><#checkbox_Yes#>

                                                    <input type="radio" value="0" name="wifidog_enableyx" id="wifidog_enableyx_0" class="input" value="0" <% nvram_match_x("", "wifidog_enableyx", "0", "checked"); %> /><#checkbox_No#>

                                                </div>

                                            </td>

                                        </tr>-->

<tr>
<th width="30%" style="border: 0 none;">有线免认证</th>
<td style="border: 0 none;">
<div class="main_itoggle">
<div id="wifidog_enableyx_on_of">
<input type="checkbox" id="wifidog_enableyx_fake" <% nvram_match_x("", "wifidog_enableyx", "1", "value=1 checked"); %><% nvram_match_x("", "wifidog_enableyx", "0", "value=0"); %>  />
</div>
</div>
<div style="position: absolute; margin-left: -10000px;">
<input type="radio" value="1" name="wifidog_enableyx" id="wifidog_enableyx_1" class="input" value="1" <% nvram_match_x("", "wifidog_enableyx", "1", "checked"); %> /><#checkbox_Yes#>
<input type="radio" value="0" name="wifidog_enableyx" id="wifidog_enableyx_0" class="input" value="0" <% nvram_match_x("", "wifidog_enableyx", "0", "checked"); %> /><#checkbox_No#>
</div>
</td>
 </tr>
 
<tr>
<th width="15%" style="border: 0 none;">2g免认证</th>
<td style="border: 0 none;">
<div class="main_itoggle">
<div id="wifidog_enablewx_on_of">
<input type="checkbox" id="wifidog_enablewx_fake" <% nvram_match_x("", "wifidog_enablewx", "1", "value=1 checked"); %><% nvram_match_x("", "wifidog_enablewx", "0", "value=0"); %>  />
</div>
</div>
<div style="position: absolute; margin-left: -10000px;">
<input type="radio" value="1" name="wifidog_enablewx" id="wifidog_enablewx_1" class="input" value="1" <% nvram_match_x("", "wifidog_enablewx", "1", "checked"); %> /><#checkbox_Yes#>
<input type="radio" value="0" name="wifidog_enablewx" id="wifidog_enablewx_0" class="input" value="0" <% nvram_match_x("", "wifidog_enablewx", "0", "checked"); %> /><#checkbox_No#>
</div>
</td>
<th width="15%" style="border: 0 none;">5g免认证</th>
<td style="border: 0 none;">
<div class="main_itoggle">
<div id="wifidog_enablewx5g_on_of">
<input type="checkbox" id="wifidog_enablewx5g_fake" <% nvram_match_x("", "wifidog_enablewx5g", "1", "value=1 checked"); %><% nvram_match_x("", "wifidog_enablewx5g", "0", "value=0"); %>  />
</div>
</div>
<div style="position: absolute; margin-left: -10000px;">
<input type="radio" value="1" name="wifidog_enablewx5g" id="wifidog_enablewx5g_1" class="input" value="1" <% nvram_match_x("", "wifidog_enablewx5g", "1", "checked"); %> /><#checkbox_Yes#>
<input type="radio" value="0" name="wifidog_enablewx5g" id="wifidog_enablewx5g_0" class="input" value="0" <% nvram_match_x("", "wifidog_enableyx5g", "0", "checked"); %> /><#checkbox_No#>
</div>
</td>
 </tr>


<tr>
<th width="15%" style="border: 0 none;">2g_guest免认证</th>
<td style="border: 0 none;">
<div class="main_itoggle">
<div id="wifidog_enablewxguest_on_of">
<input type="checkbox" id="wifidog_enablewxguest_fake" <% nvram_match_x("", "wifidog_enablewxguest", "1", "value=1 checked"); %><% nvram_match_x("", "wifidog_enablewxguest", "0", "value=0"); %>  />
</div>
</div>
<div style="position: absolute; margin-left: -10000px;">
<input type="radio" value="1" name="wifidog_enablewxguest" id="wifidog_enablewxguest_1" class="input" value="1" <% nvram_match_x("", "wifidog_enablewxguest", "1", "checked"); %> /><#checkbox_Yes#>
<input type="radio" value="0" name="wifidog_enablewxguest" id="wifidog_enablewxguest_0" class="input" value="0" <% nvram_match_x("", "wifidog_enablewxguest", "0", "checked"); %> /><#checkbox_No#>
</div>
</td>
<th width="15%" style="border: 0 none;">5g_guest免认证</th>
<td style="border: 0 none;">
<div class="main_itoggle">
<div id="wifidog_enablewx5gguest_on_of">
<input type="checkbox" id="wifidog_enablewx5gguest_fake" <% nvram_match_x("", "wifidog_enablewx5gguest", "1", "value=1 checked"); %><% nvram_match_x("", "wifidog_enablewx5gguest", "0", "value=0"); %>  />
</div>
</div>
<div style="position: absolute; margin-left: -10000px;">
<input type="radio" value="1" name="wifidog_enablewx5gguest" id="wifidog_enablewx5gguest_1" class="input" value="1" <% nvram_match_x("", "wifidog_enablewx5gguest", "1", "checked"); %> /><#checkbox_Yes#>
<input type="radio" value="0" name="wifidog_enablewx5gguest" id="wifidog_enablewx5gguest_0" class="input" value="0" <% nvram_match_x("", "wifidog_enablewx5gguest", "0", "checked"); %> /><#checkbox_No#>
</div>
</td>
 </tr>
										<tr>

                                            <th colspan="2" style="background-color: #E3E3E3;">Wifi服务器</th>

                                        </tr>

                                        <tr>

                                            <th style="border: 0 none;">服务器地址:</th>

                                           <td style="border: 0 none;"><input name="wifidog_Hostname" type="text" class="input" id="wifidog_Hostname" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_Hostname"); %>" size="32" maxlength="128" />

					   <!--<td style="border: 0 none;"><input name="wifidog_Hostname" type="text" class="input" id="wifidog_Hostname" onkeypress="return is_string(this,event);" value="wifi2.612459.com" size="32" maxlength="128" readonly />-->

                                   
                                         <tr>



                                           <th style="border: 0 none;">是否开启ssl认证服务器:</th>



                                            <td style="border: 0 none;"><input name="wifidog_sslenable" type="text" class="input" id="wifidog_sslenable" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_sslenable"); %>" size="32" maxlength="128" />



											</br><span style="color:#888;">默认no为不开启状态、请输入yes开启ssl认证。请勿随意输入！！！</span></td>



                                        </tr>

  <tr>



                                           <th style="border: 0 none;">https端口:</th>



                                            <td style="border: 0 none;"><input name="wifidog_SSLCertPath" type="text" class="input" id="wifidog_SSLCertPath" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_SSLCertPath"); %>" size="32" maxlength="128" />



											</br><span style="color:#888;">默认443 非443端口改为相应的端口</span></td>



                                        </tr>

                                        <tr>

                                            <th style="border: 0 none;">http端口:</th>

                                            <td style="border: 0 none;"><input name="wifidog_HTTPPort" type="text" class="input" id="wifidog_HTTPPort" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_HTTPPort"); %>" size="32" maxlength="128" />

											</br><span style="color:#888;">默认80端口</span></td>

                                        </tr>

							

                                         <tr>

                                            <th style="border: 0 none;">服务器路径:</th>

                                           <td style="border: 0 none;"><input name="wifidog_Path" type="text" class="input" id="wifidog_Path" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_Path"); %>" size="32" maxlength="128"  readonly />

					<!-- <td style="border: 0 none;"><input name="wifidog_Path" type="text" class="input" id="wifidog_Path" onkeypress="return is_string(this,event);" value="/" size="32" maxlength="128" readonly />	-->

											<!--</br><span style="color:#888;">默认"/",例如: "/","/wifidog/"</span>--></td>

                                        </tr>

		<!-- <tr>

                                           <th colspan="2" style="background-color: #E3E3E3;">高级设置</th>

                                        </tr>

                                        <tr>-->

                                            <th style="border: 0 none;">认证序列号:</th>

                                            <td style="border: 0 none;"><input name="wifidog_id" type="text" class="input" id="wifidog_id" onKeyPress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_id"); %>" size="12" maxlength="12"/>
 </tr>										

                                      <!--   <tr>

                                            <th style="border: 0 none;">内部网卡:</th>

                                            <td style="border: 0 none;"><input name="wifidog_lanif" type="text" class="input" id="wifidog_lanif" onKeyPress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_lanif"); %>" size="12" maxlength="12"/>

                                            </br><span style="color:#888;">留空则自动选LAN网卡</span></td>

                                        </tr>

                                      <!--  <tr>

                                            <th style="border: 0 none;">外部网卡:</th>

                                            <td style="border: 0 none;"><input name="wifidog_wanif" type="text" class="input" id="wifidog_wanif" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_wanif"); %>" size="32" maxlength="128"/>

                                            </br><span style="color:#888;">留空则自动选WAN网卡</span></td>

                                        </tr>-->

                                        <tr>

                                            <th style="border: 0 none;">网关端口:</th>

                                            <td style="border: 0 none;">

                                            <input name="wifidog_Port" type="text" class="input" id="wifidog_Port" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_Port"); %>" size="32" maxlength="128"/>

                                            </br><span style="color:#888;">默认2060</span>

                                            </td>

                                        </tr>

                                        <tr>

                                            <th style="border: 0 none;">检测ping服务器间隔:</th>

                                            <td style="border: 0 none;"><input name="wifidog_Interval" type="text" class="input" id="wifidog_Interval" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_Interval"); %>" size="32" maxlength="128"/>

                                            </br><span style="color:#888;">单位秒 默认60秒、不建议修改大于180秒</span></td>

                                        </tr>

                                         <tr>

                                            <th style="border: 0 none;">检测连接终端间隔:</th>

                                            <td style="border: 0 none;"><input name="wifidog_Timeout" type="text" class="input" id="wifidog_Timeout" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_Timeout"); %>" size="32" maxlength="128"/>
</tr>

                                        <tr>

                                            <th style="border: 0 none;">HTTP 最大连接数:</th>

                                            <td style="border: 0 none;"><input name="wifidog_MaxConn" type="text" class="input" id="wifidog_MaxConn" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_MaxConn"); %>" size="32" maxlength="128"/>

                                            </br><span style="color:#888;">默认70</span></td>

                                        </tr>

                                        <tr>

                                            <th style="border: 0 none;">信任 MAC 地址:</th>

                                            <td style="border: 0 none;"><input name="wifidog_MACList" type="text" class="input" id="wifidog_MACList" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_MACList"); %>" size="32" maxlength="1024"/>

                                            </br><span style="color:#888;">例如00:00:DE:AD:BE:AF,多个用","连接</span></td>

                                        </tr>

										 <tr>

                                            <th style="border: 0 none;">信任 Url 地址:</th>

                                            <td style="border: 0 none;"><input name="wifidog_bmdurl" type="text" class="input" id="wifidog_bmdurl" onkeypress="return is_string(this,event);" value="<% nvram_get_x("","wifidog_bmdurl"); %>" size="32" maxlength="1024"/>

                                            </br><span style="color:#888;">默认wifi.weixin.qq.com 多个请使用半角小逗号","隔开</span></td>

                                        </tr>

                                       

                                  </table>

                                    <table class="table">

                                        <tr>

                                            <td style="border: 0 none;">

                                                <center><input class="btn btn-primary" style="width: 219px" onclick="applyRule();" type="button" value="<#CTL_apply#>" /></center>

                                            </td>

                                        </tr>

                                    </table>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

    </form>

    <div id="footer"></div>

</div>

</body>

</html>
