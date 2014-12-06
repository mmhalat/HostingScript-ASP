<!--#include file="db.asp"-->
<%if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
			response.write "<center>Girdiginiz id Numarasi geçersizdir<br>Lütfen Geçerli bir id numarasi girin</center>"
			response.end
			end if
			id=request.querystring("id") %>
			<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<style type="text/css">
<!--
.style1 {
	font-size: 12px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
</head>
	
<table width="885" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
    <td width="51"><span class="style1">Kullan&#305;c&#305; &#304;D </span></td>
    <td width="133" class="style1">Ad&#305; Soyad&#305; </td>
    <td width="105" class="style1">Nick</td>
    <td width="91" class="style1">Email</td>
    <td width="111" class="style1"><div align="center">Telefon</div></td>
    <td width="98" class="style1">GSM</td>
    <td width="105" class="style1">Adres</td>
    <td width="88" class="style1">&#350;ehir</td>
    <td width="83" class="style1">Islem</td>
  </tr>
  			<%
			Set ekle = Server.CreateObject ("ADODB.RecordSet")
			sql = " Select * from musteriler order by uyeid desc"
			ekle.open sql,baglanti,1,3
			ekle.pagesize = 5000
			for i=1 to ekle.pagesize
			if ekle.eof then exit for

			%>		
    <tr>
    <td width="51" height="19"><%=ekle("uyeid")%></td>
    <td width="133"><%=ekle("adsoyad")%></td>
    <td width="105"><%=ekle("musadi")%></td>
    <td width="91"><%=ekle("email")%></td>
    <td width="111"><div align="center"><%=ekle("telefon")%></div></td>
    <td width="98"><%=ekle("gsm")%></td>
    <td width="105"><%=ekle("adres")%></td>
    <td width="88"><%=ekle("sehir")%></td>
    <td width="83"><a href="emailgonder.asp?id=<%=ekle("email")%>">EMail G&ouml;nder </a></td>
  </tr>
	    <%ekle.movenext%>

		<% next

	    ekle.close
		set ekle=nothing
		baglanti.close
		%> 
</table>

</html>