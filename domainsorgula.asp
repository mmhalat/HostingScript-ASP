<%@LANGUAGE="VBSCRIPT" CODEPAGE="1254"%>
<!--#include file="incler/yasak.asp"-->
<!-- Bismillahirahmanirahim -->
<!--#include file="ayarlar.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" language="javascript" src="fthrkl.js"></script>
<link href="fthrkl.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="ana">
  <form action="" method="post" id="sorguformu" onsubmit="if (site.value=='') {alert('Domaini yazin.')} else {git('fthrkl=sorgula&site='+site.value,'ayarlar.asp','sonuc'); }return false;">
    <div class="inputlar"><input name="site" type="text"  value="siteadi.com" class="domain" size="27"> 
<input type="submit" class="gonder" value="Sorgula"> 
</div>
<div id="sonuc">Sorgularken www ve http:// kullanmayiniz.</div>
<div id="telif"></div>
</form>
</div></body>
</html>
