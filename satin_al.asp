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
.style3 {
	color: #FF0000;
	font-weight: bold;
	font-size: 12px;
}
-->
    </style>
<script language="javascript" type="text/javascript">
<!--
function GG(alan,alan2,alan3) {
var alanx;
alanx = document.getElementById(alan).style;
alanx2 = document.getElementById(alan2).style;
alanx3 = document.getElementById(alan3).style;
if(alanx.display == "none") {
alanx.display = "";
alanx2.display = "none";
alanx3.display = "none";
}
else if(alanx.display == "") {
alanx.display = "";
alanx2.display = "none";
alanx3.display = "none";
}
else {
alanx.display = "none";
alanx2.display = "none";
alanx3.display = "none";
}
}

function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
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

      <%
			if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
			response.write "<center>Girdiginiz id Numarasi geçersizdir<br>Lütfen Geçerli bir id numarasi girin</center>"
			response.end
			end if
			id=request.querystring("id") 
			if id="1" then
			%>
<div class="wrapper">
<form action="1kaydet.asp?id=1" method="post">
<table width="345" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td width="341">
<table width="341" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="121" height="18"><div align="center">Hosting Mini Paket </div></td>
    <td width="119"><div align="center">
      <select name="odemetipi">
          <option value="Yillik" selected="selected">Yıllık</option>
      </select>
    </div></td>
    <td width="101">Yıllık <span class="style3">30</span> YTL </td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="6" colspan="3"><div align="center">
          <input type="radio" id="alan_secim" name="alan_secim" value="1" onclick="GG('alan01','alan02','alan03');" />
          Zaten Domainim Var Sadece Hosting Alacağım<img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Başka Bir Firmadan Aldığınız Domaininiz Varsa Bu Seçeneği Seçin,Domain:Sitenizin İsmi Örn:AyyildizSoFT.Com" /></div></td>
    </tr>
	    <tr id="alan01" style="display: none;">
      <td colspan="3"><div align="center"><strong>Lütfen Domain İsminizi Giriniz</strong><br>
        www.
            <input name="acilandomain" type="text" id="acilandomain" />
            .
        <input name="acilandomain2" type="text" id="acilandomain2" size="8" /> 
        <img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Var Olan Domain İsminizi Yazmaniz Gerekiyor..." /></div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="2" onclick="GG('alan02','alan03','alan01');" />
    Hosting İle Birlikte Yeni Bir Domain Siparişi Vermek İstiyorum <img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Eger Hosting+Domain Almak İstiyorsanız Bu Seçeneği Seçin Ve Otomatik Açılan Pencerede Domain Sorguladıktan Sonra Bos Bulduğunuz Domain İsmini Yazınız..." /></div></td>
  </tr>
      <tr id="alan02" style="display: none;">
      <td colspan="3">        <div align="center">
          <iframe src="domainsorgula.asp" style="width: 250px; height: 50px" scrolling="no" frameborder="0"></iframe><img src="resimler/yardim.png" class="Tips2" title="Domain İsmini www Ve http:// kullanmadan Yazıp Sorgula Butonuna Basınız."><hr size="1" class="style1">
<div align="center"><strong>Sorgu Sonucu Bos Buldugunuz Domain İsmini Yaziniz. </strong><br>
        www.
            <input name="domainkayit" type="text" id="domainkayit" />
            .
<input name="domainkayit2" type="text" id="domainkayit2" size="8" />          
        <img src="resimler/yardim.png" class="Tips2" title="Yukarda Domaini Sorguladığınız Yerde Bu Domain Kullanımda Değildir(Alabilirsiniz.) Yazısını Gördüğünüz Domaini Bu Alana Yazacaksınız."><br>
		
		Domain Tescil Süresi:
		<select name="tescil" id="tescil">
		  <option value="1" selected="selected">1 Yıl - 13 YTL</option>
		  <option value="2">2 Yıl - 25 YTL</option>
		  <option value="3">3 Yıl - 35 YTL</option>
		  <option value="4">4 Yıl - 45 YTL</option>
		  <option value="5">5 Yıl - 55 YTL </option>
                </select>
        <img src="resimler/yardim.png" class="Tips2" title="Domaini Kaç Yıllık Almak İstiyorsunuz ?,Seçiniz." /></div>
        </div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="3" onclick="GG('alan03','alan02','alan01')" />
    Zaten Sitenizde Siparişini Vermiş Olduğum alan Adi Kullanilsin<img src="resimler/yardim.png" class="Tips2" title="Daha Önce Sitemizin Üst Yatay Menüsündeki Domain Hizmeti Bölümünden Giderek Sipariş Verdiyseniz Bu Kısmı Kullanmanız Gerekiyor,Otomatik Açılan Pencerede Domaininizi Seçiniz" /> </div></td>
  </tr>
    <tr id="alan03" style="display: none;">
      <td colspan="3">	<%
set eklerim2=server.CreateObject("adodb.recordset")
sql="SELECT * FROM domainler WHERE onayid=" & session("uyeid") & " and paketonay=false"
eklerim2.open sql,baglanti,1,3
eklerim2.pagesize = 15
for i=1 to eklerim2.pagesize
if eklerim2.eof then exit for
%>	
<center><b><input type="radio" name="alan" value="<%=eklerim2("domainadi")%>"><%=eklerim2("domainadi")%></b></center>

<%eklerim2.movenext%>
<%next%></td>
    </tr>
  
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit3" value="Onayla" />
    </div></td>
  </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
<%elseif id="2" then%><br>
<form action="1kaydet.asp?id=2" method="post">
<table width="345" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td width="341">
<table width="341" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="121" height="18"><div align="center">Hosting Eko Paket </div></td>
    <td width="119"><div align="center">
      <select name="odemetipi">
          <option value="Yillik" selected="selected">Yıllık</option>
      </select>
    </div></td>
    <td width="101">Yıllık <span class="style3">40</span> YTL </td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="6" colspan="3"><div align="center">
          <input type="radio" id="alan_secim" name="alan_secim" value="1" onclick="GG('alan01','alan02','alan03');" />
          Zaten Domainim Var Sadece Hosting Alacağım<img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Başka Bir Firmadan Aldığınız Domaininiz Varsa Bu Seçeneği Seçin,Domain:Sitenizin İsmi Örn:AyyildizSoFT.Com" /></div></td>
    </tr>
	    <tr id="alan01" style="display: none;">
      <td colspan="3"><div align="center"><strong>Lütfen Domain İsminizi Giriniz</strong><br>
        www.
            <input name="acilandomain" type="text" id="acilandomain" />
            .
        <input name="acilandomain2" type="text" id="acilandomain2" size="8" /> 
        <img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Var Olan Domain İsminizi Yazmaniz Gerekiyor..." /></div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="2" onclick="GG('alan02','alan03','alan01');" />
    Hosting İle Birlikte Yeni Bir Domain Siparişi Vermek İstiyorum <img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Eger Hosting+Domain Almak İstiyorsanız Bu Seçeneği Seçin Ve Otomatik Açılan Pencerede Domain Sorguladıktan Sonra Bos Bulduğunuz Domain İsmini Yazınız..." /></div></td>
  </tr>
      <tr id="alan02" style="display: none;">
      <td colspan="3">        <div align="center">
          <iframe src="domainsorgula.asp" style="width: 250px; height: 50px" scrolling="no" frameborder="0"></iframe>
          <img src="resimler/yardim.png" class="Tips2" title="Domain İsmini www Ve http:// kullanmadan Yazıp Sorgula Butonuna Basınız." />
          <hr size="1" class="style1">
<div align="center"><strong>Sorgu Sonucu Bos Buldugunuz Domain İsmini Yaziniz. </strong><br>
        www.
            <input name="domainkayit" type="text" id="domainkayit" />
            .
<input name="domainkayit2" type="text" id="domainkayit2" size="8" />          
        <img src="resimler/yardim.png" class="Tips2" title="Yukarda Domaini Sorguladığınız Yerde Bu Domain Kullanımda Değildir(Alabilirsiniz.) Yazısını Gördüğünüz Domaini Bu Alana Yazacaksınız." /><br>
		
		Domain Tescil Süresi:
		<select name="tescil" id="tescil" >
		  <option value="1" selected="selected">1 Yıl - 13 YTL</option>
          <option value="2">2 Yıl - 25 YTL</option>
          <option value="3">3 Yıl - 35 YTL</option>
          <option value="4">4 Yıl - 45 YTL</option>
          <option value="5">5 Yıl - 55 YTL </option>
        </select>
        <img src="resimler/yardim.png" class="Tips2" title="Domaini Kaç Yıllık Almak İstiyorsunuz ?,Seçiniz." /></div>
        </div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="3" onclick="GG('alan03','alan02','alan01')" />
    Zaten Sitenizde Siparişini Vermiş Olduğum alan Adi Kullanilsin<img src="resimler/yardim.png" class="Tips2" title="Daha Önce Sitemizin Üst Yatay Menüsündeki Domain Hizmeti Bölümünden Giderek Sipariş Verdiyseniz Bu Kısmı Kullanmanız Gerekiyor,Otomatik Açılan Pencerede Domaininizi Seçiniz" /> </div></td>
  </tr>
    <tr id="alan03" style="display: none;">
      <td colspan="3">	<%
set eklerim2=server.CreateObject("adodb.recordset")
sql="SELECT * FROM domainler WHERE onayid=" & session("uyeid") & " and paketonay=false"
eklerim2.open sql,baglanti,1,3
eklerim2.pagesize = 15
for i=1 to eklerim2.pagesize
if eklerim2.eof then exit for
%>	
<center><b><input type="radio" name="alan" value="<%=eklerim2("domainadi")%>"><%=eklerim2("domainadi")%></b></center>

<%eklerim2.movenext%>
<%next%></td>
    </tr>
  
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit3" value="Onayla" />
    </div></td>
  </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
<%elseif id="3" then%><br>
<form action="1kaydet.asp?id=3" method="post">
<table width="345" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td width="341">
<table width="341" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="121" height="18"><div align="center">Hosting Pro Paket </div></td>
    <td width="119"><div align="center">
      <select name="odemetipi">
          <option value="Yillik" selected="selected">Yıllık</option>
      </select>
    </div></td>
    <td width="101">Yıllık <span class="style3">60</span> YTL </td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="6" colspan="3"><div align="center">
          <input type="radio" id="alan_secim" name="alan_secim" value="1" onclick="GG('alan01','alan02','alan03');" />
          Zaten Domainim Var Sadece Hosting Alacağım<img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Başka Bir Firmadan Aldığınız Domaininiz Varsa Bu Seçeneği Seçin,Domain:Sitenizin İsmi Örn:AyyildizSoFT.Com" /></div></td>
    </tr>
	    <tr id="alan01" style="display: none;">
      <td colspan="3"><div align="center"><strong>Lütfen Domain İsminizi Giriniz</strong><br>
        www.
            <input name="acilandomain" type="text" id="acilandomain" />
            .
        <input name="acilandomain2" type="text" id="acilandomain2" size="8" /> 
        <img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Var Olan Domain İsminizi Yazmaniz Gerekiyor..." /></div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="2" onclick="GG('alan02','alan03','alan01');" />
    Hosting İle Birlikte Yeni Bir Domain Siparişi Vermek İstiyorum <img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Eger Hosting+Domain Almak İstiyorsanız Bu Seçeneği Seçin Ve Otomatik Açılan Pencerede Domain Sorguladıktan Sonra Bos Bulduğunuz Domain İsmini Yazınız..." /></div></td>
  </tr>
      <tr id="alan02" style="display: none;">
      <td colspan="3">        <div align="center">
          <iframe src="domainsorgula.asp" style="width: 250px; height: 50px" scrolling="no" frameborder="0"></iframe>
          <img src="resimler/yardim.png" class="Tips2" title="Domain İsmini www Ve http:// kullanmadan Yazıp Sorgula Butonuna Basınız." />
          <hr size="1" class="style1">
<div align="center"><strong>Sorgu Sonucu Bos Buldugunuz Domain İsmini Yaziniz. </strong><br>
        www.
            <input name="domainkayit" type="text" id="domainkayit" />
            .
<input name="domainkayit2" type="text" id="domainkayit2" size="8" />          
        <img src="resimler/yardim.png" class="Tips2" title="Yukarda Domaini Sorguladığınız Yerde Bu Domain Kullanımda Değildir(Alabilirsiniz.) Yazısını Gördüğünüz Domaini Bu Alana Yazacaksınız." /><br>
		
		Domain Tescil Süresi:
		<select name="tescil" id="tescil" >
		  <option value="1" selected="selected">1 Yıl - 13 YTL</option>
          <option value="2">2 Yıl - 25 YTL</option>
          <option value="3">3 Yıl - 35 YTL</option>
          <option value="4">4 Yıl - 45 YTL</option>
          <option value="5">5 Yıl - 55 YTL </option>
        </select>
        <img src="resimler/yardim.png" class="Tips2" title="Domaini Kaç Yıllık Almak İstiyorsunuz ?,Seçiniz." /></div>
        </div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="3" onclick="GG('alan03','alan02','alan01')" />
    Zaten Sitenizde Siparişini Vermiş Olduğum alan Adi Kullanilsin<img src="resimler/yardim.png" class="Tips2" title="Daha Önce Sitemizin Üst Yatay Menüsündeki Domain Hizmeti Bölümünden Giderek Sipariş Verdiyseniz Bu Kısmı Kullanmanız Gerekiyor,Otomatik Açılan Pencerede Domaininizi Seçiniz" /> </div></td>
  </tr>
    <tr id="alan03" style="display: none;">
      <td colspan="3">	<%
set eklerim2=server.CreateObject("adodb.recordset")
sql="SELECT * FROM domainler WHERE onayid=" & session("uyeid") & " and paketonay=false"
eklerim2.open sql,baglanti,1,3
eklerim2.pagesize = 15
for i=1 to eklerim2.pagesize
if eklerim2.eof then exit for
%>	
<center><b><input type="radio" name="alan" value="<%=eklerim2("domainadi")%>"><%=eklerim2("domainadi")%></b></center>

<%eklerim2.movenext%>
<%next%></td>
    </tr>
  
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit3" value="Onayla" />
    </div></td>
  </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
<%elseif id="4" then%><br>
<form action="1kaydet.asp?id=4" method="post">
<table width="345" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td width="341">
<table width="341" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="121" height="18"><div align="center">Hosting Özel Paket </div></td>
    <td width="119"><div align="center">
      <select name="odemetipi">
        <option value="Aylik" selected="selected">Aylık</option>
        <option value="3aylik">3 Aylık</option>
        <option value="Yillik" >Yıllık</option>
      </select>
</div></td>
    <td width="101"><div align="center">Aylık <span class="style3">8</span> YTL<br />
  3 Aylık <span class="style3">20</span> YTL<br />
  Yıllık <span class="style3">80</span> YTL </div></td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="6" colspan="3"><div align="center">
          <input type="radio" id="alan_secim" name="alan_secim" value="1" onclick="GG('alan01','alan02','alan03');" />
          Zaten Domainim Var Sadece Hosting Alacağım<img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Başka Bir Firmadan Aldığınız Domaininiz Varsa Bu Seçeneği Seçin,Domain:Sitenizin İsmi Örn:AyyildizSoFT.Com" /></div></td>
    </tr>
	    <tr id="alan01" style="display: none;">
      <td colspan="3"><div align="center"><strong>Lütfen Domain İsminizi Giriniz</strong><br>
        www.
            <input name="acilandomain" type="text" id="acilandomain" />
            .
        <input name="acilandomain2" type="text" id="acilandomain2" size="8" /> 
        <img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Var Olan Domain İsminizi Yazmaniz Gerekiyor..." /></div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="2" onclick="GG('alan02','alan03','alan01');" />
    Hosting İle Birlikte Yeni Bir Domain Siparişi Vermek İstiyorum <img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Eger Hosting+Domain Almak İstiyorsanız Bu Seçeneği Seçin Ve Otomatik Açılan Pencerede Domain Sorguladıktan Sonra Bos Bulduğunuz Domain İsmini Yazınız..." /></div></td>
  </tr>
      <tr id="alan02" style="display: none;">
      <td colspan="3">        <div align="center">
          <iframe src="domainsorgula.asp" style="width: 250px; height: 50px" scrolling="no" frameborder="0"></iframe>
          <img src="resimler/yardim.png" class="Tips2" title="Domain İsmini www Ve http:// kullanmadan Yazıp Sorgula Butonuna Basınız." />
          <hr size="1" class="style1">
<div align="center"><strong>Sorgu Sonucu Bos Buldugunuz Domain İsmini Yaziniz. </strong><br>
        www.
            <input name="domainkayit" type="text" id="domainkayit" />
            .
<input name="domainkayit2" type="text" id="domainkayit2" size="8" />          
        <img src="resimler/yardim.png" class="Tips2" title="Yukarda Domaini Sorguladığınız Yerde Bu Domain Kullanımda Değildir(Alabilirsiniz.) Yazısını Gördüğünüz Domaini Bu Alana Yazacaksınız." /><br>
		
		Domain Tescil Süresi:
		<select name="tescil" id="tescil" >
		  <option value="1" selected="selected">1 Yıl - 13 YTL</option>
          <option value="2">2 Yıl - 25 YTL</option>
          <option value="3">3 Yıl - 35 YTL</option>
          <option value="4">4 Yıl - 45 YTL</option>
          <option value="5">5 Yıl - 55 YTL </option>
        </select>
        <img src="resimler/yardim.png" class="Tips2" title="Domaini Kaç Yıllık Almak İstiyorsunuz ?,Seçiniz." /></div>
        </div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="3" onclick="GG('alan03','alan02','alan01')" />
    Zaten Sitenizde Siparişini Vermiş Olduğum alan Adi Kullanilsin <img src="resimler/yardim.png" class="Tips2" title="Daha Önce Sitemizin Üst Yatay Menüsündeki Domain Hizmeti Bölümünden Giderek Sipariş Verdiyseniz Bu Kısmı Kullanmanız Gerekiyor,Otomatik Açılan Pencerede Domaininizi Seçiniz" /></div></td>
  </tr>
    <tr id="alan03" style="display: none;">
      <td colspan="3">	<%
set eklerim2=server.CreateObject("adodb.recordset")
sql="SELECT * FROM domainler WHERE onayid=" & session("uyeid") & " and paketonay=false"
eklerim2.open sql,baglanti,1,3
eklerim2.pagesize = 15
for i=1 to eklerim2.pagesize
if eklerim2.eof then exit for
%>	
<center><b><input type="radio" name="alan" value="<%=eklerim2("domainadi")%>"><%=eklerim2("domainadi")%></b></center>

<%eklerim2.movenext%>
<%next%></td>
    </tr>
  
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit3" value="Onayla" />
    </div></td>
  </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
<%elseif id="5" then%><br>
<form action="2kaydet.asp?id=1" method="post">
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td>
<table width="341" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="121" height="18"><div align="center">Reseller Mini Paket </div></td>
    <td width="97"><div align="center">
      <select name="odemetipi">
        <option value="Aylik" selected="selected">Aylık</option>
        <option value="3aylik">3 Aylık</option>
        <option value="Yillik" >Yıllık</option>
      </select>
    </div></td>
    <td width="123"><div align="center">Aylık <span class="style3">10</span> YTL<br>
      3 Aylık <span class="style3">25</span> YTL<br>
      Yıllık <span class="style3">90</span> YTL </div></td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit" value="Onayla" />
    </div></td>
    </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
<%elseif id="6" then%><br>
<form action="2kaydet.asp?id=2" method="post">
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td>
<table width="341" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="121" height="18"><div align="center">Reseller Eko Paket </div></td>
    <td width="97"><div align="center">
      <select name="odemetipi">
        <option value="Aylik" selected="selected">Aylık</option>
        <option value="3aylik">3 Aylık</option>
        <option value="Yillik">Yıllık</option>
      </select>
    </div></td>
    <td width="123"><div align="center">Aylık <span class="style3">20</span> YTL<br>
      3 Aylık <span class="style3">50</span> YTL<br>
      Yıllık <span class="style3">200</span> YTL </div></td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit" value="Onayla" />
    </div></td>
    </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
<%elseif id="7" then%><br>
<form action="2kaydet.asp?id=3" method="post">
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td>
<table width="341" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="121" height="18"><div align="center">Reseller Pro Paket </div></td>
    <td width="97"><div align="center">
      <select name="odemetipi">
        <option value="Aylik" selected="selected">Aylık</option>
        <option value="3aylik">3 Aylık</option>
        <option value="Yillik">Yıllık</option>
      </select>
    </div></td>
    <td width="123"><div align="center">Aylık <span class="style3">40</span> YTL<br>
      3 Aylık <span class="style3">100</span> YTL<br>
      Yıllık <span class="style3">400</span> YTL </div></td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit" value="Onayla" />
    </div></td>
    </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
<%elseif id="8" then%><br>
<form action="2kaydet.asp?id=4" method="post">
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td>
<table width="341" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="121" height="18"><div align="center">Reseller Özel Paket </div></td>
    <td width="97"><div align="center">
      <select name="odemetipi">
        <option value="Aylik" selected="selected">Aylık</option>
        <option value="3aylik">3 Aylık</option>
        <option value="Yillik">Yıllık</option>
      </select>
    </div></td>
    <td width="123"><div align="center">Aylık <span class="style3">60</span> YTL<br>
      3 Aylık <span class="style3">150</span> YTL<br>
      Yıllık <span class="style3">600</span> YTL </div></td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit" value="Onayla" />
    </div></td>
    </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
<%elseif id="9" then%><br>
<form action="2kaydet.asp?id=5" method="post">
<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td>
<table width="341" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="121" height="18"><div align="center">Reseller Ekstra Paket </div></td>
    <td width="97"><div align="center">
      <select name="odemetipi">
        <option value="Aylik" selected="selected">Aylık</option>
        <option value="3aylik">3 Aylık</option>
        <option value="Yillik">Yıllık</option>
      </select>
    </div></td>
    <td width="123"><div align="center">Aylık <span class="style3">80 </span><span class="submit">YTL </span><span class="style3"><br>
      </span><span class="submit">3 Aylık </span><span class="style3">200 </span><span class="submit">YTL</span><span class="style3"><br>
      </span> Yıllık <span class="style3">800</span> YTL </div></td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit" value="Onayla" />
    </div></td>
    </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
<%elseif id="10" then%><br>
<form action="1kaydet.asp?id=5" method="post">
<table width="345" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#DF5A0B">
<tr>
<td width="341">
<table width="343" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td colspan="3" bgcolor="#DF5A0B"><div align="center" class="style1 style2"><span class="style1 style2">Satin Alma Islemi 1. Asama </span></div></td>
  </tr>
  <tr>
    <td width="117" height="18"><div align="center">Hosting Ekstra Paket </div></td>
    <td width="116"><div align="center">
      <select name="odemetipi">
        <option value="Aylik" selected="selected">Aylık</option>
        <option value="3aylik">3 Aylık</option>
        <option value="Yillik" >Yıllık</option>
      </select>
</div></td>
    <td width="104"><div align="center">Aylık <span class="style3">12</span> YTL<br />
  3 Aylık <span class="style3">30</span> YTL<br />
  Yıllık <span class="style3">120</span> YTL </div></td>
  </tr>
  <tr bgcolor="#DF5A0B">
    <td height="19" colspan="3">
        <div align="center"></div></td>
    </tr>
  <tr>
    <td height="6" colspan="3"><div align="center">
          <input type="radio" id="alan_secim" name="alan_secim" value="1" onclick="GG('alan01','alan02','alan03');" />
          Zaten Domainim Var Sadece Hosting Alacağım<img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Başka Bir Firmadan Aldığınız Domaininiz Varsa Bu Seçeneği Seçin,Domain:Sitenizin İsmi Örn:AyyildizSoFT.Com" /></div></td>
    </tr>
	    <tr id="alan01" style="display: none;">
      <td colspan="3"><div align="center"><strong>Lütfen Domain İsminizi Giriniz</strong><br>
        www.
            <input name="acilandomain" type="text" id="acilandomain" />
            .
        <input name="acilandomain2" type="text" id="acilandomain2" size="8" /> 
        <img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Var Olan Domain İsminizi Yazmaniz Gerekiyor..." /></div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="2" onclick="GG('alan02','alan03','alan01');" />
    Hosting İle Birlikte Yeni Bir Domain Siparişi Vermek İstiyorum<img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Önemli::Eger Hosting+Domain Almak İstiyorsanız Bu Seçeneği Seçin Ve Otomatik Açılan Pencerede Domain Sorguladıktan Sonra Bos Bulduğunuz Domain İsmini Yazınız..." /> </div></td>
  </tr>
      <tr bgcolor="#FFFFFF" id="alan02" style="display: none;">
      <td colspan="3">        <div align="center">
          <iframe src="domainsorgula.asp" style="width: 250px; height: 50px" scrolling="no" frameborder="0"></iframe>
          <img src="resimler/yardim.png" class="Tips2" title="Domain İsmini www Ve http:// kullanmadan Yazıp Sorgula Butonuna Basınız." /><hr size="1" class="style1">          
<div align="center"><strong>Sorgu Sonucu Bos Buldugunuz Domain İsmini Yaziniz. </strong><br>
        www.
            <input name="domainkayit" type="text" id="domainkayit" />
            .
<input name="domainkayit2" type="text" id="domainkayit2" size="8" />          
        <img src="resimler/yardim.png" class="Tips2" title="Yukarda Domaini Sorguladığınız Yerde Bu Domain Kullanımda Değildir(Alabilirsiniz.) Yazısını Gördüğünüz Domaini Bu Alana Yazacaksınız." /><br>
		
		Domain Tescil Süresi:
		<select name="tescil" id="tescil" >
		  <option value="1" selected="selected">1 Yıl - 13 YTL</option>
          <option value="2">2 Yıl - 25 YTL</option>
          <option value="3">3 Yıl - 35 YTL</option>
          <option value="4">4 Yıl - 45 YTL</option>
          <option value="5">5 Yıl - 55 YTL </option>
        </select>
        <img src="resimler/yardim.png" class="Tips2" title="Domaini Kaç Yıllık Almak İstiyorsunuz ?,Seçiniz." /></div>
        </div></td>
    </tr>
  <tr>
    <td height="3" colspan="3"><div align="center">
     <input type="radio" id="alan_secim" name="alan_secim" value="3" onclick="GG('alan03','alan02','alan01')" />
    Zaten Sitenizde Siparişini Vermiş Olduğum alan Adi Kullanilsin<img src="resimler/yardim.png" class="Tips2" title="Daha Önce Sitemizin Üst Yatay Menüsündeki Domain Hizmeti Bölümünden Giderek Sipariş Verdiyseniz Bu Kısmı Kullanmanız Gerekiyor,Otomatik Açılan Pencerede Domaininizi Seçiniz" /> </div></td>
  </tr>
    <tr id="alan03" style="display: none;">
      <td colspan="3">	<%
set eklerim2=server.CreateObject("adodb.recordset")
sql="SELECT * FROM domainler WHERE onayid=" & session("uyeid") & " and paketonay=false"
eklerim2.open sql,baglanti,1,3
eklerim2.pagesize = 15
for i=1 to eklerim2.pagesize
if eklerim2.eof then exit for
%>	
<center><b><input type="radio" name="alan" value="<%=eklerim2("domainadi")%>"><%=eklerim2("domainadi")%></b></center>

<%eklerim2.movenext%>
<%next%></td>
    </tr>
  
  <tr>
    <td height="24" colspan="3"><div align="center">
      <input type="submit" name="Submit3" value="Onayla" />
    </div></td>
  </tr>
</table>
</td></tr></table>
<div align="center"></div>
</form>
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
<%end if%>