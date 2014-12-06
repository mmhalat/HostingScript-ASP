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
sql = "Select * from paketler"
odeme.open sql,Baglanti,1,3
Set domaintbl = Server.CreateObject("ADODB.Recordset")
sql = "Select * from domainler"
domaintbl.open sql,Baglanti,1,3
odemetipi = temizle(Request.Form("odemetipi"))
acilandomain = temizle(Request.Form("acilandomain"))
acilandomain2 = temizle(Request.Form("acilandomain2"))
alan_secim = temizle(CINT(request.Form("alan_secim")))
domainkayit = temizle(Request.Form("domainkayit"))
tescil = temizle(CINT(Request.Form("tescil")))
domainkayit2 = temizle(Request.Form("domainkayit2"))
alan = temizle(Request.Form("alan"))

%>
<%
if tescil = "1" then
DSTROdemetutari = "13"
elseif tescil = "2" then
DSTROdemetutari = "25"
elseif tescil = "3" then
DSTROdemetutari = "35"
elseif tescil = "4" then
DSTROdemetutari = "45"
elseif tescil = "5" then
DSTROdemetutari = "55"
end if
if id="1" then
if alan_secim = "1" then
odeme.addnew
odeme("paketadi") = "Hosting Mini Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = "30"
odeme("acilandomain") = acilandomain& "."& acilandomain2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
elseif alan_secim = "2" then
MiniPak = "30"
DMiniPak= int(DSTROdemetutari) + int(MiniPak)
odeme.addnew
odeme("paketadi") = "Hosting Mini Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = DMiniPak
odeme("acilandomain") = domainkayit& "."& domainkayit2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
domaintbl.addnew
domaintbl("domainadi") = domainkayit& "."& domainkayit2
domaintbl("dns1") = "ns1.ayyildizsoft.com"
domaintbl("dns2") = "ns2.ayyildizsoft.com"
domaintbl("odenentutar") = DSTROdemetutari
domaintbl("tescilsuresi") = tescilsuresi
domaintbl("paketonay") = false
domaintbl("onayid") = session("uyeid")
domaintbl.Update
domaintbl.close
set domaintbl=nothing
elseif alan_secim = "3" then
MiniPak = "30"
DMiniPak= "13" + int(MiniPak)
odeme.addnew
odeme("paketadi") = "Hosting Mini Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = DMiniPak
odeme("acilandomain") = alan
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
end if
%>
<%
elseif id="2" then
%>
<%
if alan_secim = "1" then
odeme.addnew
odeme("paketadi") = "Hosting Eko Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = "40"
odeme("acilandomain") = acilandomain& "."& acilandomain2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
elseif alan_secim = "2" then
EkoPak = "40"
DEkoPak= int(DSTROdemetutari) + int(EkoPak)
odeme.addnew
odeme("paketadi") = "Hosting Eko Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = DEkoPak
odeme("acilandomain") = domainkayit& "."& domainkayit2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
domaintbl.addnew
domaintbl("domainadi") = domainkayit& "."& domainkayit2
domaintbl("dns1") = "ns1.ayyildizsoft.com"
domaintbl("dns2") = "ns2.ayyildizsoft.com"
domaintbl("odenentutar") = DSTROdemetutari
domaintbl("tescilsuresi") = tescilsuresi
domaintbl("paketonay") = false
domaintbl("onayid") = session("uyeid")
domaintbl.Update
domaintbl.close
set domaintbl=nothing
elseif alan_secim = "3" then
EkoPak = "40"
DEkoPak= "13" + int(EkoPak)
odeme.addnew
odeme("paketadi") = "Hosting Eko Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = EkoPak
odeme("acilandomain") = alan
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
end if
%>
<%
elseif id="3" then
%>
<%
if alan_secim = "1" then
odeme.addnew
odeme("paketadi") = "Hosting Pro Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = "60"
odeme("acilandomain") = acilandomain& "."& acilandomain2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
elseif alan_secim = "2" then
ProPak = "60"
DProPak= int(DSTROdemetutari) + int(ProPak)
odeme.addnew
odeme("paketadi") = "Hosting Pro Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = DProPak
odeme("acilandomain") = domainkayit& "."& domainkayit2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
domaintbl.addnew
domaintbl("domainadi") = domainkayit& "."& domainkayit2
domaintbl("dns1") = "ns1.ayyildizsoft.com"
domaintbl("dns2") = "ns2.ayyildizsoft.com"
domaintbl("odenentutar") = DSTROdemetutari
domaintbl("tescilsuresi") = tescilsuresi
domaintbl("paketonay") = false
domaintbl("onayid") = session("uyeid")
domaintbl.Update
domaintbl.close
set domaintbl=nothing
elseif alan_secim = "3" then
ProPak = "40"
DProPak= "13" + int(ProPak)
odeme.addnew
odeme("paketadi") = "Hosting Pro Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = DproPak
odeme("acilandomain") = alan
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
end if

elseif id="5" then
if odemetipi = "Aylik" then
STROdemetutari = "12"
elseif odemetipi = "3aylik" then
STROdemetutari = "30"
elseif odemetipi= "yillik" then
STROdemetutari = "120"
end if

if alan_secim = "1" then
odeme.addnew
odeme("paketadi") = "Hosting Ekstra Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = STROdemetutari
odeme("acilandomain") = acilandomain& "."& acilandomain2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
elseif alan_secim = "2" then
DEkstraPak= int(STROdemetutari) + int(DStrOdemetutari)
odeme.addnew
odeme("paketadi") = "Hosting Ekstra Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = DekstraPak
odeme("acilandomain") = domainkayit& "."& domainkayit2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
domaintbl.addnew
domaintbl("domainadi") = domainkayit& "."& domainkayit2
domaintbl("dns1") = "ns1.ayyildizsoft.com"
domaintbl("dns2") = "ns2.ayyildizsoft.com"
domaintbl("odenentutar") = DSTROdemetutari
domaintbl("tescilsuresi") = tescilsuresi
domaintbl("paketonay") = false
domaintbl("onayid") = session("uyeid")
domaintbl.Update
domaintbl.close
set domaintbl=nothing
elseif alan_secim = "3" then
DEkstraPak= int(STROdemetutari) + "13"
odeme.addnew
odeme("paketadi") = "Hosting Ekstra Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = DEsktraPak
odeme("acilandomain") = alan
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
end if
%>
<%
elseif id="4" then
%>
<%
if odemetipi = "Aylik" then
STROdemetutari = "8"
elseif odemetipi = "3aylik" then
STROdemetutari = "20"
else
STROdemetutari = "80"
end if
if alan_secim = "1" then
odeme.addnew
odeme("paketadi") = "Hosting Özel Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = STROdemetutari
odeme("acilandomain") = acilandomain& "."& acilandomain2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
elseif alan_secim = "2" then
DOzelPak= int(STROdemetutari) + int(DStrOdemetutari)
odeme.addnew
odeme("paketadi") = "Hosting Özel Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = DOzelPak
odeme("acilandomain") = domainkayit& "."& domainkayit2
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
domaintbl.addnew
domaintbl("domainadi") = domainkayit& "."& domainkayit2
domaintbl("dns1") = "ns1.ayyildizsoft.com"
domaintbl("dns2") = "ns2.ayyildizsoft.com"
domaintbl("odenentutar") = DSTROdemetutari
domaintbl("tescil") = tescilsuresi
domaintbl("paketonay") = false
domaintbl("onayid") = session("uyeid")
domaintbl.Update
domaintbl.close
set domaintbl=nothing
elseif alan_secim = "3" then
DOzelPak= int(STROdemetutari) + "13"
odeme.addnew
odeme("paketadi") = "Hosting Özel Paket"
odeme("odemetipi") = odemetipi
odeme("odenentutar") = DOzelPak
odeme("acilandomain") = alan
odeme("paketonay") = false
odeme("onayid") = session("uyeid")
odeme.Update
odeme.close
set odeme=nothing
end if
end if
%>
<%
Set idcek = Server.CreateObject("ADODB.Recordset")
sql = "Select * from paketler where onayid=CINT('"&session("uyeid")&"') order by paketid desc"
idcek.open sql,Baglanti,1,3
Set mussec = Server.CreateObject("ADODB.Recordset")
sql = "Select * from musteriler where uyeid=CINT('"&session("uyeid")&"')"
mussec.open sql,Baglanti,1,3
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
Siparişiniz için teşekkür ederiz. Ödemenizin ardından siparişiniz aktif edilecektir. Ödemeniz gereken tutar <strong><%=idcek("odenentutar")%> YTL&nbsp;</strong>'dir. <br />
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
mussec.close
set mussec=nothing
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
end if