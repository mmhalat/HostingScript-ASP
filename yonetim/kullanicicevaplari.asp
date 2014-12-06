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
	
<table width="603" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
    <td width="98"><span class="style1">Yaz&#305;lan Cevap </span></td>
    <td width="107" class="style1">Tarih</td>
    <td width="71" class="style1">Edestek Numarasi</td>
    <td width="154" class="style1">Yazan</td>
    <td width="161" class="style1"><div align="center">Islem</div></td>
  </tr>
  			<%
			Set ekle = Server.CreateObject ("ADODB.RecordSet")
			sql = " Select * from edesmesajlar order by id desc"
			ekle.open sql,baglanti,1,3
			ekle.pagesize = 5000
			for i=1 to ekle.pagesize
			if ekle.eof then exit for

			%>		
    <tr>
    <td width="98" height="19"><%=ekle("icerik")%></td>
    <td width="107"><%=ekle("tarih")%></td>
    <td width="71"><%=ekle("edesid")%></td>
    <td width="154"><%=ekle("gonderen")%></td>
    <td width="161"><div align="center"><a href="cevapyaz.asp?id=<%=ekle("edesid")%>">Cevap Yaz</a></div></td>
  </tr>
	    <%ekle.movenext%>

		<% next

	    ekle.close
		set ekle=nothing
		baglanti.close
		%> 
</table>

</html>