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
-->
    </style>
	<LINK media=screen href="dosyalar/style.css" type=text/css rel=stylesheet>
	<SCRIPT src="dosyalar/mootools.js" type=text/javascript></SCRIPT>
	<SCRIPT src="dosyalar/demos.js" type=text/javascript></SCRIPT>
	<SCRIPT type=text/javascript>
		window.addEvent('domready', function(){
			/* Tips 1 */
			var Tips1 = new Tips($$('.Tips1'));
			
			/* Tips 2 */
			var Tips2 = new Tips($$('.Tips2'), {
				initialize:function(){
					this.fx = new Fx.Style(this.toolTip, 'opacity', {duration: 500, wait: false}).set(0);
				},
				onShow: function(toolTip) {
					this.fx.start(1);
				},
				onHide: function(toolTip) {
					this.fx.start(0);
				}
			});
			
			/* Tips 3 */
			var Tips3 = new Tips($$('.Tips3'), {
				showDelay: 400,
				hideDelay: 400,
				fixed: true
			});
			
			/* Tips 4 */
			var Tips4 = new Tips($$('.Tips4'), {
				className: 'custom'
			});
		}); 
	</SCRIPT>
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

<table width="250" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td height="5" colspan="5"><div id="winhosting"><img src="resimler/aktif.gif" />&nbsp;&nbsp;<img src="resimler/yardim.png" class="Tips2" title="Aktif Hosting Paketleri::�demesini Yaptiginiz Paketler Bu B�l�mde Listeleniyor, Herhangi Bir Paket Sat�n Almad�ysan�z Bo� Olacakt�r."></div></td>
    </tr>
    <tr>
      <td colspan="5"><img src="resimler/yatay-cizgi.png" width="500" height="3" /></td>
      </tr>
    <tr>
      <td><span class="style1">Paket Ad�</span></td>
      <td><strong>Son �deme Tarihi</strong></td>
      <td class="style1">�denen Tutar</td>
      <td><strong>�deme Tipi </strong></td>
    </tr>
	<%	
set eklerim=server.CreateObject("adodb.recordset")
sql="SELECT * FROM paketler WHERE onayid=" & session("uyeid") & " and paketonay=true"
eklerim.open sql,baglanti,1,3
eklerim.pagesize = 15
for i=1 to eklerim.pagesize
if eklerim.eof then exit for
%>
    <tr>
      <td width="147"><%=eklerim("paketadi")%></td>
      <td width="147"><%=eklerim("aktifolmatarihi")%></td>
      <td width="147"><%=eklerim("odenentutar")%> YTL</td>
      <td width="147"><%=eklerim("odemetipi")%></td>
    </tr>
	<%eklerim.movenext%>
<% next%>

</tbody></table>

<br>
<table width="250" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td height="9" colspan="5"><div id="winhosting"><img src="resimler/aktifbekleyen.gif" />
	<img src="resimler/yardim.png" class="Tips2" title="�deme Bekleyen Hostingler::Sipari�ini Verdi�iniz Ama Hen�z �demesini Yapmad���n�z Hosting Paketleri Listeleniyor, Banka Hesaplar�m�zdan Herhangi Birine '�denecek Tutar' � Havale Ettikten Sonra '�deme Bildirimi' Yapiniz,�demeniz Onayland��� Takdirde Hosting Paketiniz Personelimiz Taraf�ndan Aktif Hale Getirilecek Ve Mail Adresinize Gereken Bilgiler G�nderilecektir." width="16" height="16" /></div></td>
    </tr>
    <tr>
      <td colspan="5"><img src="resimler/yatay-cizgi.png" width="500" height="3" /></td>
      </tr>
    <tr>
      <td><span class="style1">Paket Ad�</span></td>
      <td><strong>�denecek Tutar </strong></td>
      <td class="style1">�deme Tipi </td>
      <td><strong>�deme Bildirimi </strong></td>
    </tr>
	<%
set eklerim2=server.CreateObject("adodb.recordset")
sql="SELECT * FROM paketler WHERE onayid=" & session("uyeid") & " and paketonay=false"
eklerim2.open sql,baglanti,1,3
eklerim.pagesize = 15
for i=1 to eklerim2.pagesize
if eklerim2.eof then exit for
%>
    <tr>
      <td width="147"><%=eklerim2("paketadi")%></td>
      <td width="147"><%=eklerim2("odenentutar")%> YTL </td>
      <td width="147"><%=eklerim2("odemetipi")%></td>
      <td width="147"><a href="pakode.asp?id=<%=eklerim2("paketid")%>">�deme Bildirimi Yap</a></td>
    </tr>
	<%eklerim2.movenext%>
<% next%>

</tbody></table><br>
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
<%
eklerim.close
set eklerim=nothing
eklerim2.close
set eklerim2=nothing
%>