<!--#include file="db.asp"-->
<!--#include file="incler/yasak.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <meta name="keywords" content="AyyildizHost, AyyildizSoFT, hosting, webhosting, linux, kaliteli, ucuz, server, servers, sunucu, php5, php, jsp, asp, Kayseri, 
telekom, t�rk, hizli, g�venli, .com, .net">
    <meta name="author" content="Sitemizi AyyildizSoFT Ad� Alt�nda M.Metin HALAT Yazm��t�r.">
    <meta name="description" content="AyyildizSoFT ' un Katk�lar�yla AyyildizHost Ad� Alt�nda Hizmet Veren Alt �irketimiz Size Kalite �le G�veni Beraberinde Getiriyor. ">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
    <meta http-equiv="Content-Language" content="tr">	
    <link rel="stylesheet" href="resimler/style.css" type="text/css">
    <link rel="stylesheet" href="resimler/imageMenu.css" type="text/css"><title>AyyildizSoFT �nternet Bili�im Hizmetleri...</title>
    <script src="resimler/AC_RunActiveContent.js" type="text/javascript"></script>
    <script src="resimler/mootools.js" type="text/javascript"></script>
    <script src="resimler/imageMenu.js" type="text/javascript"></script>
    <style type="text/css">
<!--
.style1 {
	font-size: 11px;
	font-weight: bold;
}
.style2 {color: #FFFFFF}
.style3 {color: #FF0000}
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
<!--#include file="replace.asp"-->
		<div class="bar">
			<ul>
                <li><a href="default.asp">Anasayfa  </a></li>
				<li><a href="hosting.asp">Windows &amp; Linux Hosting</a></li>
				<li><a href="reseller.asp">Reseller Hosting </a></li>
				<li><a href="domain.asp">Domain Hizmeti </a></li>
				<li><a href="sss.asp">S.S.S</a></li>

                <li><a href="iletisim.asp">�leti�im</a></li>

			</ul>
</div>
<!--#include file="incler/solmenu.asp"-->

<div class="wrapper">
<%
domainadi = request.Form("domainadi")
tescil = request.Form("tescil")
%>
<%
if tescil = "1" then
odenentutar = "13 YTL"
elseif tescil = "2" then
odenentutar = "25 YTL"
elseif tescil = "3" then
odenentutar = "35 YTL"
elseif tescil = "4" then
odenentutar = "45 YTL"
elseif tescil = "5" then
odenentutar = "55 YTL"
end if
Set domaintbl = Server.CreateObject("ADODB.Recordset")
sql = "Select * from domainler"
domaintbl.open sql,Baglanti,1,3
domaintbl.addnew
domaintbl("domainadi") = domainadi
domaintbl("dns1") = "ns1.ayyildizsoft.com"
domaintbl("dns2") = "ns2.ayyildizsoft.com"
domaintbl("odenentutar") = odenentutar
domaintbl("tescilsuresi") = tescil
domaintbl("paketonay") = false
domaintbl("dnsdurum") = true
domaintbl("onayid") = session("uyeid")
domaintbl.Update
domaintbl.close
set domaintbl=nothing
%>
<table width="555" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#DF5A0B"><div align="center" class="style1 style2">1. A�ama Ba�ar�yla Tamamland�</div></td>
  </tr>
  <tr>
    <td height="98"><div align="center"><strong>Say�n; <%=session("musadi")%> </strong><br />
	Tebrikler!! , <%=domainadi%> Adl� Domain Sepetinize At�lm��t�r.<br><%=domainadi%> Adl� Domaini Art�k Hosting Sipari�lerinde Kullabilirsiniz.
        
        <br />
<br>
      </div></td>
  </tr>
</table>

<%
baglanti.close
set baglanti=nothing
%>
<br>
<br>
</div>

<div class="footer">
<img src="resimler/cizgi.gif" width="793" height="5" align="middle">
<p align="center"><a href="sitemap.xml"> Site Haritasi</a> |<a href="bankahesap.asp"> Banka Hesaplar�</a> | <a href="referanslar.asp">Referanslar�m�z</a> | <a href="iletisim.asp">Bize 
Ula�in</a> | <a href="sozlesme.asp">Hizmet S�zle�mesi</a> | <a href="gizlilik.asp">Gizlilik ve G�venlik</a> <a href="http://validator.w3.org/check?uri=referer"></a><br>
AyyildizSoFT �nternet Bili�im Hizmetleri Kayseri<br>
        Telefon :0554 778 79 63<br>
                    
    E-Mail: Destek@AyyildizSoFT.CoM</p>
      </div>
    </div></td><td width="16" background="resimler/sagbg.gif"></td></tr>
</table>
 
</body></html>