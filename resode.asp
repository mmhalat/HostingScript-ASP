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
<%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
response.write "<center>Girdi�iniz id Numaras� ge�ersizdir<br>L�tfen Ge�erli bir id numaras� girin</center>"
response.end
end if
%> 
<% dim id
id=request.querystring("id") %> 
<%
Set ekle = Server.CreateObject ("ADODB.RecordSet")
sql = " Select * from reseller where paketid=" & id
ekle.open sql,baglanti,1,3
%>
<%
if ekle.eof then
response.Write("<center>�d Ge�ersizdir.</center>")
else
%>
<form action="resodendi.asp" method="post" name="formum">
<table width="571" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr bgcolor="#DF5A0B">
    <td colspan="4"><div class="style1" id="winhosting">
      <div align="center" class="style2">�deme Bildirim Sayfas� </div>
    </div></td>
    </tr>
    <tr>
      <td width="255" height="18"><div align="right">Hizmet Ad� : </div></td>
      <td height="18" colspan="2"><%=ekle("paketadi")%><input name="hizmetadi" type="hidden" value="<%=ekle("paketadi")%>"></td>
    </tr>
    <tr>
      <td height="9"><div align="right">�denecek Tutar: </div></td>
      <td height="9" colspan="2"><%=ekle("odenentutar")%><input name="odeid" type="hidden" value="<%=ekle("paketid")%>"></td>
    </tr>
    <tr>
      <td height="18"><div align="right">�denen Tutar: 
          
    </div></td>
      <td height="18" colspan="2"><input name="odenentutar" type="text" size="10" maxlength="7" /> 
        Max:7 Karakter ( �rn:<span class="style3">10YTL</span> ) </td>
    </tr>
    <tr>
      <td height="21"><div align="right">Banka:</div></td>
      <td height="21" colspan="2"><select name="banka" size="1">
        <option value="Akbank" selected="selected">Akbank</option>
        <option value="PTT">PTT</option>
      </select></td>
    </tr>
    <tr>
      <td height="18"><div align="right">�deme Yapan�n Ad� Soyad�: 
          
    </div></td>
      <td height="18" colspan="2"><input name="adsoyad" type="text" maxlength="25" />
        Max:25 Karakter (�rn:<span class="style3">M.Metin HALAT</span> ) </td>
    </tr>
    <tr>
      <td height="57"><div align="right">A��klama:
            
    </div></td>
      <td width="141" height="57" colspan="-1"><textarea name="aciklama">
</textarea>      </td>
      <td width="175">S�re Uzatmasi �se L�tfen Belirtiniz.</td>
    </tr>
    <tr>
      <td height="25"><div align="right">
        <input type="reset" name="Reset" value="Formu Temizle" />
      </div></td>
      <td height="25" colspan="2"><input type="submit" name="Submit2" value="�deme Bildirimini G�nder." /></td>
    </tr>

</tbody></table>
</form>
<%ekle.close
set ekle=nothing
 baglanti.close
 set baglanti=nothing%><%end if%>
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
    </div>
 </td><td width="16" background="resimler/sagbg.gif"></td></tr>
</table>
</body></html>