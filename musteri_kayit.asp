<!--#include file="db.asp"-->
<!--#include file="replace.asp"--><head>
<STYLE type=text/css>
A:link {
	COLOR: #000000
}
A:visited {
	COLOR: #000000
}
A:hover {
	COLOR: #9b0000
}
A:active {
	COLOR: #006600
}
body {
	background-color: #ffffff;
}
.style4 {
	font-size: 10px;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.style5 {
	font-size: 1px;
	color: #FFFFFF;
}
</STYLE>
<%
IF Session("giris")="tamam" Then
Response.Redirect "default.asp"
End IF

Set rs = Server.CreateObject("ADODB.Recordset")
sql = "Select * from musteriler"
rs.open sql,Baglanti,1,3

ad= temizle(Request.Form("ad"))
soyad = temizle(Request.Form("soyad"))
musadi = temizle(Request.Form("musadi"))
sifre = temizle(Request.Form("sifre"))
email = temizle(Request.Form("email"))
telefon = temizle(Request.Form("telefon"))
gsm = temizle(Request.Form("gsm"))
adres = temizle(Request.Form("adres"))
sehir = temizle(Request.Form("sehir"))

      Set uye_kontrol = Server.CreateObject("adodb.recordset")
      SQL="Select * from musteriler where musadi='"&musadi&"'"
      uye_kontrol.Open SQL,baglanti,1,3
  
      IF NOT uye_kontrol.eof Then
%>


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9"><table width="650" border="0" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650" height="15" background="resimler/tdgl.png"><div align="center" class="style5">.</div></td>
  </tr>
  <tr>
    <td width="650" height="50" bgcolor="#FFFFFF"><div align="center">

      <p>
          <span class="style4">Kullanýcý Adýnýz Baþka Bir Kullanýcý Tarafýndan Kullanýlýyor Lütfen Geri Giderek Baþka Bir Kullanýcý Adý Seçiniz.
		  </span><br/><br/>
		  <input name="button" type=button onClick="history.back()" value="Geri Git">
          <br> 
        </a></p>
    </div></td>
  </tr>
  <tr>
    <td height="18" background="resimler/tdbgalt.png" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>

<%else
if  ad="" or soyad="" OR musadi="" OR sifre="" OR email="" OR telefon="" or sehir="" then%>
<table width="650" border="0" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650" height="15" background="resimler/tdgl.png"><div align="center"></div></td>
  </tr>
  <tr>
    <td width="650" height="50" bgcolor="#FFFFFF"><div align="center">
      <p><span class="style4">Zorunlu Yazýlmasý Gereken Bir Kutucugu Bos Býraktýnýz Lütfen Geri Dönerek Tekrar Deneyiniz. </span></p>
      <p>
          <input name="button" type=button onClick="history.back()" value="Geri Git">
          <br> 
          </a></p>
    </div></td>
  </tr>
  <tr>
    <td height="18" background="resimler/tdbgalt.png" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>
<%else
rs.AddNew
rs("adsoyad") = ad&soyad
rs("musadi") = musadi
rs("sifre")= sifre
rs("email")= email
rs("telefon")= telefon
rs("ktarih") = now()
rs("sontarih") = now()
rs("gsm") = gsm
rs("sehir")= sehir
rs("adres")= adres
rs.Update
%>
<%
  
  Set uye_giris = Server.CreateObject("adodb.recordset")
  SQL="Select * from musteriler where musadi='"&musadi&"' and sifre='"&sifre&"'"
  uye_giris.open SQL,baglanti,1,3
  
  IF Not uye_giris.EOF Then
  Session("giris") ="tamam"
  Session("musadi")=uye_giris("musadi")
  Session("uyeid")=uye_giris("uyeid")
  uye_giris.Update
    %>
  <table width="650" border="0" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650" height="14" background="resimler/tdgl.png"><div align="center" class="style5">.</div></td>
  </tr>
  <tr>
    <td width="650" height="50" bgcolor="#FFFFFF"><span class="style4">
      <div align="center">
    
      <div align="center"><span class="style4">Kaydýnýz Baþarý Ýle Yapýldý</span><span class="style4"><br>
  2 Saniye Ýçinde Anasayfaya Yönlendiriliyorsunuz</span>
  <meta http-equiv="refresh" content="2;URL=default.asp">
      </div></td>
  </tr>
  <tr>
    <td height="18" background="resimler/tdbgalt.png" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>
<%
  else
  response.Write("Program Tarafýndan Ýstenmeyen Bir Olay Yaþandý ,Siteye Zararlý Kod Ýnjekte Etmeye Çalýþabiliyor Olabilirsiniz.")
end if
%>
<%end if%>
<%end if%>





