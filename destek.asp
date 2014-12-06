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
	<%set edestek=server.CreateObject("adodb.recordset")
	sql="SELECT * FROM edestek WHERE musid=" & session("uyeid") & " and acikkapali=true"
	edestek.open sql,baglanti,1,3%>
	<%
	if edestek.eof then
	%>
<table width="571" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr bgcolor="#DF5A0B">
    <td width="571" colspan="2"><div class="style1" id="winhosting">
      <div align="center" class="style2">E-Destek Mesajlarınız... </div>
    </div></td>
    </tr>
    <tr>
      <td height="9"><div align="center">Açık Edestek Mesajınız Bulunmamaktadır </div></td>
    </tr>
    <tr>
      <td height="5"><div align="center"><a href="edesac.asp">Yeni Bir Tane Açmak İçin Tıklayın</a></div></td>
    </tr>
    <tr>
      <td height="4"><div align="center"></div></td>
    </tr>
    <tr>
      <td height="5"><div align="center">Sadece Açık Mesajlarınız Görüntülenmektedir </div></td>
    </tr>
    <tr>
      <td height="9"><div align="center"><a href="edestum.asp">Şimdiye Kadar Yazdığınız Tüm Mesajlar İçin Tıklayın. </a></div></td>
    </tr>

</tbody></table>
	<%
	else
	%>
<table width="571" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr bgcolor="#DF5A0B">
    <td colspan="6"><div class="style1" id="winhosting">
      <div align="center" class="style2">E-Destek Mesajlarınız... </div>
    </div></td>
    </tr>

    <tr class="style1">
      <td width="105" height="4">Departman</td>
      <td colspan="2">Konu </td>
      <td colspan="2">Tarih</td>
    </tr>
	  <%edestek.pagesize = 15
for i=1 to edestek.pagesize
if edestek.eof then exit for%>
    <tr>
      <td height="5"><%=edestek("departman")%></td>
      <td height="5" colspan="2"><a href="baslikoku.asp?id=<%=edestek("id")%>"><%=edestek("baslik")%></a></td>
      <td height="5" colspan="2"><%=edestek("tarih")%></td>
	  
    </tr>
	<%edestek.movenext
		next
		%>
    <tr>
      <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="5"><div align="center">Sadece Açık Mesajlarınız Görüntülenmektedir </div></td>
    </tr>
    <tr>
      <td colspan="5"><div align="center"><a href="edestum.asp">Şimdiye Kadar Yazdığınız Tüm Mesajlar İçin Tıklayın. </a></div></td>
    </tr>
    <tr>
      <td height="11" colspan="3">&nbsp;</td>
      <td width="99" height="11"><div align="center"></div></td>
      <td width="92" rowspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td height="11">&nbsp;</td>
      <td width="98" height="11"><div align="center"><a href="default.asp"><img src="resimler/anasayfa.png" width="48" height="48" border="0" /></a></div></td>
      <td width="177">&nbsp;</td>
      <td height="11"><div align="center"><a href="edesac.asp"><img src="resimler/yeni_edestek_talebi.png" width="48" height="48" border="0" align="middle" /></a></div></td>
    </tr>
    <tr>
      <td height="22">&nbsp;</td>
      <td height="22"><div align="center"><a href="default.asp">Anasayfaya Dön </a></div></td>
      <td height="22">&nbsp;</td>
      <td height="22"><div align="center"><a href="edesac.asp">Yeni E-Destek Talebi</a></div></td>
    </tr>
<%end if%>
</tbody></table>
<br>
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