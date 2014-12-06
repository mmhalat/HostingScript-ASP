<style type="text/css">
<!--
.style1 {
	font-size: 10px;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
-->
</style>
<div align="center" class="style1">Sectiginiz Kayit Silinmistir Menuden Secim Yaparak Devam Ediniz.</div>
<!--#include file="db.asp"-->
<%
id = Request.QueryString("id")
IF Not IsNumeric(REQUEST.QUERYSTRING("id")) THEN
Response.Redirect "index.asp"
Response.End
END IF

Set rs = Server.CreateObject("ADODB.Recordset")
sql = "DELETE From odemeler Where id="& id
rs.open sql,Baglanti,1,3
baglanti.close
%>

