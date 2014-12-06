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
.style4 {color: #000000}
.style5 {font-size: 11px; font-weight: bold; color: #000000; }
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
if Not IsNumeric(REQUEST.QUERYSTRING("id")) THEN
response.write "<center>Girdiğiniz id Numarası geçersizdir<br>Lütfen Geçerli bir id numarası girin</center>"
response.end
end if
%> 
<% dim id
id=request.querystring("id") %> 
<%
Set ekle = Server.CreateObject ("ADODB.RecordSet")
sql = " Select * from edestek where id="&id&" order by id desc"
ekle.open sql,baglanti,1,3
%>
<%
if ekle.eof then
response.Write("<center>İd Geçersizdir.</center>")
else
%>
<table width="571" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr bgcolor="#DF5A0B">
    <td colspan="3"><div class="style1" id="winhosting">
      <div align="center" class="style2"><%=ekle("id")%> Numaralı Edestek Mesajınız.</div>
    </div></td>
    </tr>
    <tr>
      <td width="281" height="9"><div align="center" class="style1">
        <div align="right">Durum:</div>
      </div></td>
      <td width="291"><%if ekle("acikkapali")=true then
	  					response.Write("Açık")
						else
						response.Write("Kapalı")
						end if%></td>
    </tr>
    <tr>
      <td height="5"><div align="center" class="style1">
        <div align="right">Konu: </div>
      </div></td>
      <td height="5"><span class="submit"> <%=ekle("baslik")%></span></td>
    </tr>
    <tr>
      <td height="4"><div align="center" class="style1">
        <div align="right">Departman: </div>
      </div></td>
      <td height="4"><span class="submit"><%=ekle("departman")%></span></td>
    </tr>
    <tr>
      <td height="5"><div align="center" class="style1">
        <div align="right">Öncelik: </div>
      </div></td>
      <td height="5"><span class="submit"><%=ekle("oncelik")%></span></td>
    </tr>
    <tr>
      <td height="4"><div align="center" class="style1">
        <div align="right">Tarih: </div>
      </div></td>
      <td height="4"><span class="submit"><%=ekle("tarih")%></span></td>
    </tr>
    <tr>
      <td height="5" colspan="2"><div align="center"><a href="edescvpekle.asp?id=<%=request.QueryString("id")%>">Cevap Ekle </a></div></td>
      </tr>
    <tr>
      <td height="3" colspan="2"><img src="resimler/yatay-cizgi.png" width="570" height="3" /></td>
    </tr>
		<%
Set eklerim = Server.CreateObject ("ADODB.RecordSet")
sql = " Select * from edesmesajlar where edesid="&id&" order by id desc"
eklerim.open sql,baglanti,1,3
		eklerim.pagesize = 15
		for i=1 to eklerim.pagesize
		if eklerim.eof then exit for
		%>
		
    <tr>
      <td colspan="2">
        <table width="572" height="18" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="62" class="style1 style4">Gönderen:</td>
            <td width="509" class="submit"><%=eklerim("gonderen")%></td>
          </tr>
        </table>
     </td>
      </tr>
    <tr>
      <td height="1" colspan="2"><div class="style5">Mesaj İçeriği:</div>
      <span class="submit"><%=eklerim("icerik")%></span></td>
    </tr>
	    <tr>
      <td height="3" colspan="2"><img src="resimler/yatay-cizgi.png" width="570" height="3" /></td>
    </tr>
	<%eklerim.movenext%>
<% next
end if%>
		
    <tr>
      <td colspan="2">
        <table width="572" height="18" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="62" class="style1 style4">Gönderen:</td>
            <td width="509" class="submit"><%=session("musadi")%></td>
          </tr>
        </table>
     </td>
      </tr>
    <tr>
      <td height="1" colspan="2"><div class="style5">Mesaj İçeriği:</div>
      <span class="submit"><%=ekle("aciklama")%></span></td>
    </tr>
	
    <tr>
      <td height="1" colspan="2"><img src="resimler/yatay-cizgi.png" width="570" height="3" /></td>
    </tr>

</tbody></table><table width="574" border="0" cellpadding="0" cellspacing="0">
  <tr><td height="18"><div align="center"></div></td>
</tr>
  <tr>
    <td height="29"><div align="center"><a onclick="history.back()"><img src="resimler/geri.png" /></a></div></td>
  </tr>
</table>
	<br>
<br>
</div>
<%ekle.close
set ekle=nothing
eklerim.close
set eklerim=nothing
baglanti.close
set baglanti=nothing%>
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