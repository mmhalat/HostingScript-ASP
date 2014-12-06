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
	
<table width="577" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
    <td width="99"><span class="style1">Baslik</span></td>
    <td width="108" class="style1">Aciklama</td>
    <td width="74" class="style1">Acik/Kapali</td>
    <td width="145" class="style1">Müsteri Numarasi</td>
    <td width="139" class="style1"><div align="center">Islem</div></td>
  </tr>
  			<%
			Set ekle = Server.CreateObject ("ADODB.RecordSet")
			sql = " Select * from edestek where acikkapali=true order by id desc"
			ekle.open sql,baglanti,1,3
			ekle.pagesize = 5000
			for i=1 to ekle.pagesize
			if ekle.eof then exit for

			%>		
    <tr>
    <td width="99" height="19"><%=ekle("baslik")%></td>
    <td width="108"><%=ekle("aciklama")%></td>
    <td width="74"><%=ekle("acikkapali")%></td>
    <td width="145"><%=ekle("musid")%></td>
    <td width="139"><div align="center"><a href="cevapyaz.asp?id=<%=ekle("id")%>">Cevap Yaz</a></div></td>
  </tr>
	    <%ekle.movenext%>

		<% next

	    ekle.close
		set ekle=nothing
		baglanti.close
		%> 
</table>

</html>