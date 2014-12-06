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
	
<table width="793" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
    <td width="99"><span class="style1">Hizmet Ad&#305;</span></td>
    <td width="108" class="style1">&Ouml;denen Tutar</td>
    <td width="65" class="style1">BANKA</td>
    <td width="84" class="style1">Ad Soyad </td>
    <td width="91" class="style1">Aciklama</td>
    <td width="104" class="style1">Kullan&#305;c&#305; &#304;D </td>
    <td width="104" class="style1">Sipari&#351; &#304;D </td>
    <td width="120" class="style1"><div align="center">Islem</div></td>
  </tr>
  			<%
			Set ekle = Server.CreateObject ("ADODB.RecordSet")
			sql = " Select * from odemeler order by id desc"
			ekle.open sql,baglanti,1,3
			ekle.pagesize = 5000
			for i=1 to ekle.pagesize
			if ekle.eof then exit for

			%>		
    <tr>
    <td width="99" height="19"><%=ekle("hizmetadi")%></td>
    <td width="108"><%=ekle("odenentutar")%></td>
    <td width="65"><%=ekle("banka")%></td>
    <td width="84"><%=ekle("adsoyad")%></td>
    <td width="91"><%=ekle("aciklama")%></td>
    <td width="104"></td>
    <td width="104"><%=ekle("odeid")%></td>
    <td width="120"><div align="center"><a href="sil.asp?id=<%=ekle("id")%>">Sil</a></div></td>
  </tr>
	    <%ekle.movenext%>

		<% next

	    ekle.close
		set ekle=nothing
		baglanti.close
		%> 
</table>

</html>