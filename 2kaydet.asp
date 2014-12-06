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
<!--#include file="replace.asp"-->
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
			response.write "<center>Girdiginiz id Numarasi geçersizdir<br>Lütfen Geçerli bir id numarasi girin</center>"
			response.end
			end if
			id=request.querystring("id") 
%>
<%
Set odeme = Server.CreateObject("ADODB.Recordset")
sql = "Select * from reseller"
odeme.open sql,Baglanti,1,3
odemetipi = temizle(Request.Form("odemetipi"))
%>
<%
if id="1" then
%>
<%
if odemetipi = "Aylik" then
STROdemetutari = "10"
elseif odemetipi = "3aylik" then
STRodemetutari = "25"
else
STROdemetutari = "90"
end if
odeme.addnew
odeme("paketadi") = "Reseller Mini Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = STROdemetutari
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
%>
<%
elseif id="2" then
%>
<%
if odemetipi = "Aylik" then
STROdemetutari = "20"
elseif odemetipi = "3aylik" then
STROdemetutari = "50"
else
STROdemetutari = "200"
end if
odeme.addnew
odeme("paketadi") = "Reseller Eko Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = STROdemetutari
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
%>
<%
elseif id="3" then
%>
<%
if odemetipi = "Aylik" then
STROdemetutari = "40"
elseif odemetipi = "3aylik" then
STROdemetutari = "100"
else
STROdemetutari = "400"
end if
odeme.addnew
odeme("paketadi") = "Reseller Pro Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = STROdemetutari
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
%>
<%
elseif id="5" then
%>
<%
if odemetipi = "Aylik" then
STROdemetutari = "80"
elseif odemetipi = "3aylik" then
STROdemetutari = "200"
else
STROdemetutari = "800"
end if
odeme.addnew
odeme("paketadi") = "Reseller Ekstra Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = STROdemetutari
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
%>
<%
elseif id="4" then
%>
<%
if odemetipi = "Aylik" then
STROdemetutari = "60"
elseif odemetipi = "3aylik" then
STROdemetutari = "150"
else
STROdemetutari = "600"
end if
odeme.addnew
odeme("paketadi") = "Reseller Özel Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = STROdemetutari
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
end if
%>
<%
Set idcek = Server.CreateObject("ADODB.Recordset")
sql = "Select * from reseller where onayid=CINT('"&session("uyeid")&"') order by paketid desc"
idcek.open sql,Baglanti,1,3
if idcek.eof then
response.Write("Gereken Islem Programa Yaptirilamadi.")
response.End()
end if
%>
<table width="555" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#DF5A0B"><div align="center" class="style1 style2">1. Aşama Başarıyla Tamamlandı</div></td>
  </tr>
  <tr>
    <td height="98"><div align="center">Tebrikler!! , Siparisiniz Sisteme Basariyla Kayıt Edildi.<br>
        <strong>Sayın; <%=session("musadi")%> </strong><br />
        <br />
Siparişiniz için teşekkür ederiz. Ödemenizin ardından siparişiniz aktif edilecektir. Ödemeniz gereken tutar <strong><%=idcek("odenentutar")%>YTL </strong>'dir. <br />
<br />
<strong>Sipariş Numaranız : <%=idcek("paketid")%> <br />
<br />
Ödemenizi yaparken açıklama kısmına sitemizdeki Kullanıcı Adınızı ve Sipariş numaranızı yazmanız ve ödemenizini gerçekleştirdikten sonra <a href="ode.asp">Ödeme Bildirimi  </a>yapmanız gerekmektedir. </strong><br />
<br />
<a href="bankahesap.asp">Hesap numaralarımıza ulaşmak için buraya tıklayınız</a><br>
      </div></td>
  </tr>
</table>

<%
idcek.close
set idcek=nothing
baglanti.close
set baglanti=nothing
%>
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
