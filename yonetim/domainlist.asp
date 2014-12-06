<!--#include file="db.asp"-->
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
	
<table width="676" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
    <td width="98"><span class="style1">Sipari&#351; &#304;D </span></td>
    <td width="107" class="style1">&Ouml;denecek TUTAR </td>
    <td width="64" class="style1">Paket Ad&#305;</td>
    <td width="83" class="style1">&Ouml;deme Tipi </td>
    <td width="51" class="style1">Kullan&#305;c&#305; &#304;D </td>
    <td width="131" class="style1">Aktivasyon Tarihi </td>
    <td width="126" class="style1"><div align="center">Islem</div></td>
  </tr>
  			<%
			Set ekle = Server.CreateObject ("ADODB.RecordSet")
			sql = " Select * from domainler order by id desc"
			ekle.open sql,baglanti,1,3
			ekle.pagesize = 5000
			for i=1 to ekle.pagesize
			if ekle.eof then exit for

			%>		
    <tr>
    <td width="98" height="19"><%=ekle("id")%></td>
    <td width="107"><%=ekle("odenentutar")%></td>
    <td width="64"><%=ekle("domainadi")%></td>
    <td width="83"><%=ekle("tescilsuresi")%></td>
    <td width="51"><%=ekle("onayid")%></td>
    <td width="131"><%=ekle("aktifolmatarihi")%></td>
    <td width="126"><div align="center"><a href="donayver.asp?id=<%=ekle("id")%>">Onay Ver</a> - <a href="dsil.asp?id=<%=ekle("id")%>">Sil </a></div></td>
  </tr>
	    <%ekle.movenext%>

		<% next

	    ekle.close
		set ekle=nothing
		baglanti.close
		%> 
</table>

</html>