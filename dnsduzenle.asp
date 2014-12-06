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
	<%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
response.write "<center>Girdiğiniz id Numarası geçersizdir<br>Lütfen Geçerli bir id numarası girin</center>"
response.end
end if
%> 
<% dim id
id=request.querystring("id") %> 
	<%
set eklerim=server.CreateObject("adodb.recordset")
sql="SELECT * FROM domainler where id="& id
eklerim.open sql,baglanti,1,3
%>
<form action="dnskaydet.asp?id=<%=eklerim("id")%>" method="post">
<table width="508" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td height="5" colspan="4"><div id="winhosting">
      <div align="center" class="style1"><%=eklerim("Domainadi")%> Adlı Domain Dns Adresleri Düzenleniyor.</div>
    </div></td>
    </tr>
    <tr>
      <td colspan="4"><img src="resimler/yatay-cizgi.png" width="500" height="3" /></td>
      </tr>
    <tr>
      <td><span class="style1">DNS 1 </span></td>
      <td><strong>DNS 2 </strong></td>
      <td width="129" class="style1">Onay Durumu </td>
      </tr>

    <tr>
      <td width="224"><input name="dns1" type="text" id="dns1" value="<%=eklerim("dns1")%>" /></td>
      <td width="155"><input name="dns2" type="text" id="dns2" value="<%=eklerim("dns2")%>" /></td>
      <td>
	  <%
	  if eklerim("dnsdurum") = true then
	  response.Write("Aktif")
	  else
	  response.Write("Beklemede")
	  end if
	  %>
	  </td>
      </tr>
    <tr>
      <td colspan="3"><div align="left">
        <input type="submit" name="Submit" value="Yeni DNS Adreslerini Kayit Et" />
      </div></td>
      </tr>

</tbody></table>
</form>

<br>
</div>

<div class="footer">
<img src="resimler/cizgi.gif" width="793" height="5" align="middle">
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
<%
eklerim.close
set eklerim=nothing
baglanti.close
set baglanti=nothing
%>