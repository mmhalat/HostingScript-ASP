<!--#include file="db.asp"-->
<!--#include file="fonksiyon.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <meta name="keywords" content="AyyildizHost, AyyildizSoFT, hosting, webhosting, linux, kaliteli, ucuz, server, servers, sunucu, php5, php, jsp, asp, Kayseri, 
telekom, türk, hizli, güvenli, .com, .net">
    <meta name="author" content="Sitemizi AyyildizSoFT Adı Altında M.Metin HALAT Yazmıştır.">
    <meta name="description" content="AyyildizSoFT ' un Katkılarıyla AyyildizHost Adı Altında Hizmet Veren Alt Şirketimiz Size Kalite İle Güveni Beraberinde Getiriyor. ">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
    <meta http-equiv="Content-Language" content="tr">	
    <link rel="stylesheet" href="resimler/style.css" type="text/css">
	<title>AyyildizSoFT İnternet Bilişim Hizmetleri...</title>
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

                <li><a href="iletisim.asp">İletişim</a></li>

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
            <td colspan="4"><div align="center" class="style3">Üye Kayıt İşlemi </div></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td width="242" height="20"><div align="right">İsim(<span class="style1">*</span>)</div></td>
            <td width="4">:</td>
            <td colspan="2"><input name="ad" type="text" id="ad"/>
              <img src="resimler/yardim.png" class="Tips2" title="İsim::Bu Kısma Gerçek İsminizi Girmeniz Gerekmektedir,Daha Sonra Vereceğiniz Siparişlerinizde Kontrol Panel Kullanıcı Adınız Adınız Ve Soyadınızdan Oluşacaktır." /></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Soyisim(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="soyad" type="text" id="soyad"/>
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Soyisim::Bu Kısma Gerçek İsminizi Girmeniz Gerekmektedir,Daha Sonra Vereceğiniz Siparişlerinizde Kontrol Panel Kullanıcı Adınız Adınız Ve Soyadınızdan Oluşacaktır."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Kullanıcı Adı(<span class="style1">*</span>) </div></td>
            <td>:</td>
            <td colspan="2"><input name="musadi" type="text" id="musadi" />
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Kullanıcı Adı::Sitede Giriş Yaparken Kullanacaginiz Takma Adinizi Yazınız." /></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">E-Posta(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="email" type="text" id="email" />
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Önemli::Sık Olarak Kontrol Ettiğiniz Bir Mail Adresi Yazınız, Email Adresinizi Yanlış Girdiğinizde Verdiğiniz Siparişlerin Bilgileri Size Ulaşmayacaktır Bu Yüzden Doğru Doldurmaya Dikkat Edin Lütfen."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Telefon(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="telefon" type="text" id="telefon"/>
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Telefon::Acil Durumlarda Size Ulaşabileceğimiz Bir Telefon Numarası Giriniz."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Cep Tel(GSM)</div></td>
            <td>:</td>
            <td colspan="2"><input name="gsm" type="text" id="gsm"/>
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Cep Tel(GSM)::Girilmesi Zorunlu Olmamakla Birlikte Telefon ile Ulasilamadiginda Bu Numara Dikkate Alinacaktir Doğru Girmeniz Tavsiye Edilir." /></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Şehir(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="sehir" type="text" id="sehir" />
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Şehir::Fatura Bilgileriniz Gönderilirken Bize Yardımcı Olacaktir."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td><div align="right">Şifre(<span class="style1">*</span>)</div></td>
            <td>:</td>
            <td colspan="2"><input name="sifre" type="password" id="sifre"/>
              <img src="resimler/yardim.png" width="16" height="16" align="top" class="Tips2" title="Şifre::Sitede Giriş Yaparken Kullanacaginiz Şifreyi Yaziniz,Doldururken İsim Veya Soyisim'inizi Kullanmayiniz Karisik Bir Sifre Secmeniz Hesap Güvenliğinizi Arttıracaktır."/></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td height="57"><div align="right">Adres</div></td>
            <td>:</td>
            <td width="141"><textarea name="adres" id="adres"></textarea>
              </td>
            <td width="111"><img src="resimler/yardim.png" width="16" height="16" class="Tips2" title="Adres::Faturanız Postalanırken İhtiyaç Duyulacaktir."/>
</td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td height="11"><div align="right">
              <input type="reset" name="Submit3" value="Temizle" />
            </div></td>
            <td>&nbsp;</td>
            <td colspan="2"><input type="submit" name="Submit4" value="Gönder" /></td>
          </tr>
          <tr>
            <td height="16" colspan="4" background="resimler/tdbgalt.png">&nbsp;</td>
          </tr>
        </table></td></tr></table></form>


<div align="center">Soru İşaretlerini Kullanabilmeniz İçin İnternet Explorer Kullanmaniz Gerekmektedir.<br>
      (<span class="style1">*</span>) Doldurulması Zorunlu Alanları İfade Eder.
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