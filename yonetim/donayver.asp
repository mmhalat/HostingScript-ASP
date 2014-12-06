<style type="text/css">
<!--
.style1 {
	font-size: 10px;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
-->
</style>
<div align="center" class="style1">Sectiginiz Kayit Aktif Konuma Getirilmistir.</div>
<!--#include file="db.asp"-->
<%
id = Request.QueryString("id")
IF Not IsNumeric(REQUEST.QUERYSTRING("id")) THEN
Response.Redirect "index.asp"
Response.End
END IF
Set rs = baglanti.Execute("UPDATE domainler SET aktifolmatarihi=now(), paketonay=true WHERE domainler.domainid=" & id) 

baglanti.close
set baglanti = nothing
%>

