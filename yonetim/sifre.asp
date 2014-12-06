<% Session.Timeout = 120 %>
<% sifremiz = "147258369**+*-" %>
<%
if session("usersifre") <> sifremiz then
	if request.form("usersifre") <> sifremiz then
		call parolaform
	else
		session("usersifre") = sifremiz
	end if
end if
%>

<%
sub parolaform
THISPAGE = "http://" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("URL")
%>

<head>
            <STYLE>
			BODY {font-family: verdana; font-size: 11}
			input {font-family: verdana; font-size: 11}
			</STYLE>
            <title></title>
<link rel="stylesheet" href="stil.css" type="text/css">
<style type="text/css">
<!--
.style1 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#000000">

<p align="center">
<form method=post action="<%= thispage%>">
            <p align="center">
            
  <p align="center"><span class="style1">L&uuml;tfen Gecerli Sifreyi Giriniz.  </span><br>
			
    <input type="PASSWORD" name="usersifre" value="" size="20" style="font-family: Arial; color: #000000; font-size: 18pt; font-weight: bold">
			<br><br>
			<input type="submit" value="Giris" style="background-color: #FFCC00; font-family: Arial; color: #000000; font-size: 8pt; font-weight: bold">
  </p>
</form>
			<br>
			
<p align="center">
  <%response.end
end sub
%>
