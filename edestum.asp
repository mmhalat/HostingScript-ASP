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
	<%set edestek=server.CreateObject("adodb.recordset")
	sql="SELECT * FROM edestek WHERE musid=" & session("uyeid") & ""
	edestek.open sql,baglanti,1,3%>
<table width="571" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr bgcolor="#DF5A0B">
    <td colspan="6"><div class="style1" id="winhosting">
      <div align="center" class="style2">T�m E-Destek Mesajlar�n�z G�steriliyor.</div>
    </div></td>
    </tr>

    <tr class="style1">
      <td width="105" height="4">Departman</td>
      <td width="275" colspan="2">Konu </td>
      <td width="99" colspan="2">Tarih</td>
    </tr>
	  <%edestek.pagesize = 20
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
</tbody></table>
<br>
<table width="571" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="91">&nbsp;</td>
    <td width="89"><div align="center"><a href="destek.asp"><img src="resimler/anasayfa.png" width="48" height="48" border="0" /></a>&nbsp;</div></td>
    <td width="157">&nbsp;</td>
    <td width="98"><div align="center"><a href="edesac.asp"><img src="resimler/yeni_edestek_talebi.png" width="48" height="48" border="0" align="middle" /></a>&nbsp;</div></td>
    <td width="136">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="center"><a href="destek.asp">Edestek Anasayfa </a></div></td>
    <td>&nbsp;</td>
    <td><div align="center"><a href="edesac.asp">Yeni E-Destek Talebi</a></div></td>
    <td>&nbsp;</td>
  </tr>
</table>
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
    </div>
 </td><td width="16" background="resimler/sagbg.gif"></td></tr>
</table>
</body></html>