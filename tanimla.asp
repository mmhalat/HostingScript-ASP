<!--#include file="db.asp"--><head>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1254">
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
.style1 {
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
body {
	background-color: #ffffff;
}
.style2 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 12px;
}
</STYLE><!--#include file="replace.asp"-->
<%
 musadi= temizle(Request.Form("musadi")) 
 sifre= temizle(Request.Form("sifre"))
  
  Set uye_giris = Server.CreateObject("adodb.recordset")
  SQL="Select * from musteriler where musadi='"&musadi&"' and sifre='"&sifre&"'"
  uye_giris.open SQL,baglanti,1,3
  
  IF Not uye_giris.EOF Then
  Session("giris") ="tamam"
  Session("musadi")=uye_giris("musadi")
  Session("uyeid")=uye_giris("uyeid")
  uye_giris.Update
    %>
  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><span class="style1"><meta http-equiv="refresh" content="0;URL=default.asp"></span><br> 
    </div>
  
  <%
  Else
%>

  <table width="300" height="50" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" order>
  <tr>
    <td width="650" height="25"><div align="center" class="style2">
Hatalı Giriş Yaptınız. <meta http-equiv="refresh" content="1;URL=default.asp">        
      </div></td>
  </tr>
</table>

<%
  End IF

%>