<!--#include file="db.asp"-->
<%
Set odeme = Server.CreateObject("ADODB.Recordset")
sql = "Select * from edesmesajlar"
odeme.open sql,Baglanti,1,3

icerik = Request.Form("icerik")
%>
<%
odeme.addnew
odeme("tarih") = now()
odeme("gonderen") = "<font color=""red"">AyyildizSoFT Müsteri Hizmetleri</font>"
odeme("edesid") = request.QueryString("id")
odeme("icerik") = icerik
odeme.Update
odeme.close
set odeme=nothing
%>
<%

baglanti.close
set baglanti=nothing

%>