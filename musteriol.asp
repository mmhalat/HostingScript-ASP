<!--#include file="db.asp"-->
<!--#include file="fonksiyon.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <meta name="keywords" content="AyyildizHost, AyyildizSoFT, hosting, webhosting, linux, kaliteli, ucuz, server, servers, sunucu, php5, php, jsp, asp, Kayseri, 
telekom, t�rk, hizli, g�venli, .com, .net">
    <meta name="author" content="Sitemizi AyyildizSoFT Ad� Alt�nda M.Metin HALAT Yazm��t�r.">
    <meta name="description" content="AyyildizSoFT ' un Katk�lar�yla AyyildizHost Ad� Alt�nda Hizmet Veren Alt �irketimiz Size Kalite �le G�veni Beraberinde Getiriyor. ">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
    <meta http-equiv="Content-Language" content="tr">	
    <link rel="stylesheet" href="resimler/style.css" type="text/css">
	<title>AyyildizSoFT �nternet Bili�im Hizmetleri...</title>
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
    <style type="text/css">
<!--
.style1 {color: #FF0000}
.style3 {
	font-size: 11px;
	font-weight: bold;
}
.style4 {
	font-size: 1px;
	color: #FFFFFF;
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

                <li><a href="iletisim.asp">�leti�im</a></li>

			</ul>
</div>			<!--#include file="incler/solmenu.asp"-->
<br>
<form action="musteri_kayit.asp" method="post">
  <table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#ED5448">   
  <tr><td>    <table width="498" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr background="resimler/tdgl.png">
            <td colspan="4"></td>
          </tr>
          <tr background="resimler/tdgl2.png">
            <td colspan="4"><div align="center" class="style3">�ye Kay�t ��lemi </div></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td width="242" height="20"><div align="right">�sim(<span class="style1">*</span>)</div></td>
            <td width="4">:</td>
            <td colspan="2"><input name="ad" type="text" id="ad"/>
              <img src="resimler/yardim.png" class="Tips2" title="�sim::Bu K�sma Ger�ek �sminizi Girmeniz Gerekmektedir,Daha Sonra Verece�iniz Sipari�lerinizde Kontrol Panel Kullan�c� Ad�n�z Ad�n�z Ve Soyad�n�zdan Olu�acakt�r." /></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Soyisim(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="soyad" type="text" id="soyad"/>
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Soyisim::Bu K�sma Ger�ek �sminizi Girmeniz Gerekmektedir,Daha Sonra Verece�iniz Sipari�lerinizde Kontrol Panel Kullan�c� Ad�n�z Ad�n�z Ve Soyad�n�zdan Olu�acakt�r."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Kullan�c� Ad�(<span class="style1">*</span>) </div></td>
            <td>:</td>
            <td colspan="2"><input name="musadi" type="text" id="musadi" />
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Kullan�c� Ad�::Sitede Giri� Yaparken Kullanacaginiz Takma Adinizi Yaz�n�z." /></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">E-Posta(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="email" type="text" id="email" />
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="�nemli::S�k Olarak Kontrol Etti�iniz Bir Mail Adresi Yaz�n�z, Email Adresinizi Yanl�� Girdi�inizde Verdi�iniz Sipari�lerin Bilgileri Size Ula�mayacakt�r Bu Y�zden Do�ru Doldurmaya Dikkat Edin L�tfen."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Telefon(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="telefon" type="text" id="telefon"/>
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Telefon::Acil Durumlarda Size Ula�abilece�imiz Bir Telefon Numaras� Giriniz."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Cep Tel(GSM)</div></td>
            <td>:</td>
            <td colspan="2"><input name="gsm" type="text" id="gsm"/>
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Cep Tel(GSM)::Girilmesi Zorunlu Olmamakla Birlikte Telefon ile Ulasilamadiginda Bu Numara Dikkate Alinacaktir Do�ru Girmeniz Tavsiye Edilir." /></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">�ehir(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="sehir" type="text" id="sehir" />
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="�ehir::Fatura Bilgileriniz G�nderilirken Bize Yard�mc� Olacaktir."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">�ifre(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="sifre" type="password" id="sifre"/>
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="�ifre::Sitede Giri� Yaparken Kullanacaginiz �ifreyi Yaziniz,Doldururken �sim Veya Soyisim'inizi Kullanmayiniz Karisik Bir Sifre Secmeniz Hesap G�venli�inizi Artt�racakt�r."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td height="57"><div align="right">Adres</div></td>
            <td>:</td>
            <td width="141"><textarea name="adres" id="adres"></textarea>
              </td>
            <td width="111"><img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Adres::Faturan�z Postalan�rken �htiya� Duyulacaktir."/>
</td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td height="11"><div align="right">
              <input type="reset" name="Submit3" value="Temizle" />
            </div></td>
            <td>&nbsp;</td>
            <td colspan="2"><input type="submit" name="Submit4" value="G�nder" /></td>
          </tr>
          <tr>
            <td height="16" colspan="4" background="resimler/tdbgalt.png">&nbsp;</td>
          </tr>
        </table></td></tr></table></form>


<div align="center">Soru ��aretlerini Kullanabilmeniz ��in �nternet Explorer Kullanmaniz Gerekmektedir.<br>
      (<span class="style1">*</span>) Doldurulmas� Zorunlu Alanlar� �fade Eder.
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