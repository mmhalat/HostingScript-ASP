<!--#include file="db.asp"-->
<!--#include file="incler/yasak.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>


    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <meta name="keywords" content="AyyildizHost, AyyildizSoFT, hosting, webhosting, linux, kaliteli, ucuz, server, servers, sunucu, php5, php, jsp, asp, Kayseri, 
telekom, türk, hizli, güvenli, .com, .net">
    <meta name="author" content="Sitemizi AyyildizSoFT Adı Altında M.Metin HALAT Yazmıştır.">
    <meta name="description" content="AyyildizSoFT ' un Katkılarıyla AyyildizHost Adı Altında Hizmet Veren Alt Şirketimiz Size Kalite İle Güveni Beraberinde Getiriyor. ">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
    <meta http-equiv="Content-Language" content="tr">	
    <link rel="stylesheet" href="resimler/style.css" type="text/css">
    <link rel="stylesheet" href="resimler/imageMenu.css" type="text/css"><title>AyyildizSoFT İnternet Bilişim Hizmetleri...</title>

    
    <script src="resimler/AC_RunActiveContent.js" type="text/javascript"></script>
    <script src="resimler/mootools.js" type="text/javascript"></script>
    <script src="resimler/imageMenu.js" type="text/javascript"></script>
    <style type="text/css">
<!--
.style1 {
	font-size: 11px;
	font-weight: bold;
}
-->
    </style>
</head>
<body background="resimler/bg.gif">
<table border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="16" background="resimler/solbg.gif"></td>
    <td width="840">
	<div class="content">
<!--#include file="incler/ust.asp"-->
		<div class="bar">
			<ul>
                <li><a href="default.asp">Anasayfa  </a></li>
				<li><a href="hosting.asp">Windows &amp; Linux Hosting</a></li>
				<li><a href="reseller.asp">Reseller Hosting </a></li>
				<li><a href="domain.asp">Domain Hizmeti </a></li>
				<li><a href="sss.asp">S.S.S</a></li>

                <li><a href="iletisim.asp">İletişim</a></li>

			</ul>
</div>
<!--#include file="incler/solmenu.asp"-->
<div class="wrapper">
<table width="566" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td height="17" colspan="7"><div class="style1" id="winhosting">
      <div align="center">Ödeme Bekleyen Hizmetler </div>
    </div></td>
    </tr>
    <tr>
      <td colspan="7"><img src="resimler/cizgi.gif" width="570" height="2" /></td>
    </tr>
	<%
set eklerim=server.CreateObject("adodb.recordset")
sql="SELECT * FROM domainler WHERE onayid=" & session("uyeid") & " and paketonay=false"
eklerim.open sql,baglanti,1,3
set paketim=server.CreateObject("adodb.recordset")
sql="SELECT * FROM paketler WHERE onayid=" & session("uyeid") & " and paketonay=false"
paketim.open sql,baglanti,1,3
set resellerim=server.CreateObject("adodb.recordset")
sql="SELECT * FROM reseller WHERE onayid=" & session("uyeid") & " and paketonay=false"
resellerim.open sql,baglanti,1,3
if eklerim.eof and paketim.eof and resellerim.eof then 
response.Write("<center>Henüz Herhangi Bir Sipariş Vermediniz...</center>")
else
eklerim.pagesize = 15
for i=1 to eklerim.pagesize
if eklerim.eof then exit for
%>
    <tr>
      <td width="161"><div align="left"><%=eklerim("domainadi")%></div></td>
      <td width="96"><%=eklerim("odenentutar")%> YTL</td>
      <td width="313"> <a href="do-ode.asp?id=<%=eklerim("id")%>">ÖDE </a></td>
    </tr>
	<%eklerim.movenext%>
<% next
	end if %><%
paketim.pagesize = 15
for i=1 to paketim.pagesize
if paketim.eof then exit for
%>
    <tr>
      <td width="161"><div align="left"><%=paketim("paketadi")%></div></td>
      <td width="96"><%=paketim("odenentutar")%>YTL</td>
      <td width="313"><a href="pakode.asp?id=<%=paketim("paketid")%>">ÖDE</a></td>
    </tr>
	<%paketim.movenext%>
<% next
 %><%

resellerim.pagesize = 15
for i=1 to resellerim.pagesize
if resellerim.eof then exit for
%>
    <tr>
      <td width="161"><div align="left"><%=resellerim("paketadi")%></div></td>
      <td width="96"><%=resellerim("odenentutar")%>YTL</td>
      <td width="313"><a href="resode.asp?id=<%=resellerim("paketid")%>">ÖDE</a></td>
    </tr>
	<%resellerim.movenext%>
<% next
 %>

</tbody></table>
<br>
</div>

<div class="footer">
<img src="resimler/cizgi.gif" width="800" height="5" align="middle">
<p align="center"><a href="sitemap.xml"> Site Haritasi</a> |<a href="bankahesap.asp"> Banka Hesapları</a> | <a href="referanslar.asp">Referanslarımız</a> | <a href="iletisim.asp">Bize 
Ulaşin</a> | <a href="sozlesme.asp">Hizmet Sözleşmesi</a> | <a href="gizlilik.asp">Gizlilik ve Güvenlik</a> <a href="http://validator.w3.org/check?uri=referer"></a><br>
AyyildizSoFT İnternet Bilişim Hizmetleri Kayseri<br>
        Telefon :0554 778 79 63<br>
                    
    E-Mail: Destek@AyyildizSoFT.CoM</p>
      </div>
    </div>
 </td><td width="16" background="resimler/sagbg.gif"></td></tr>
</table>
</body></html>