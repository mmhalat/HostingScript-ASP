<!--#include file="db.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>


    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <meta name="keywords" content="AyyildizHost, AyyildizSoFT, hosting, webhosting, linux, kaliteli, ucuz, server, servers, sunucu, php5, php, jsp, asp, Kayseri, 
telekom, türk, hizli, güvenli, .com, .net">
    <meta name="author" content="Sitemizi AyyildizSoFT Adı Altında M.Metin HALAT Yazmıştır.">
    <meta name="description" content="AyyildizSoFT ' un Katkılarıyla AyyildizHost Adı Altında Hizmet Veren Alt Şirketimiz Size Kalite İle Güveni Beraberinde Getiriyor. ">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
    <meta http-equiv="Content-Language" content="tr">	
    <link rel="stylesheet" href="resimler/style.css" type="text/css">
    <link rel="stylesheet" href="resimler/imageMenu.css" type="text/css"><title>AyyildizSoFT İnternet Bilişim Hizmetleri...</title>

    
    <script src="resimler/AC_RunActiveContent.js" type="text/javascript"></script>
    <script src="resimler/mootools.js" type="text/javascript"></script>
    <script src="resimler/imageMenu.js" type="text/javascript"></script>
    <style type="text/css">
<!--
.style3 {color: #FF0000}
-->
    </style>
<%
Server.ScriptTimeout = 90

Private Function characterStrip(strTextInput)
	strTextInput = LCase(strTextInput)
	strTextInput = Replace(strTextInput, "http://", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, "www.", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".tr", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".com", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".net", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".org", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".biz", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".info", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".mobi", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".name", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".edu", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".pro", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".int", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".am", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".cc", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".cx", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".eu", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".fm", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".ie", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".tc", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".tm", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".us", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".ws", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".gen", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".web", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".name", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".gov", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".edu", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".bel", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".k12", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".mil", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".pol", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".dr", "", 1, -1, 1)
	strTextInput = Replace(strTextInput, ".av", "", 1, -1, 1)
	If Left(strTextInput, 1) = "-" Then strTextInput = Mid(strTextInput, 2, Len(strTextInput))
	If Right(strTextInput, 1) = "-" Then strTextInput = Mid(strTextInput, 1, Len(strTextInput)-1)
	strTextInput = Replace(strTextInput, "--", "-", 1, -1, 1)

	For intLoopCounter = 0 to 44
		strTextInput = Replace(strTextInput, CHR(intLoopCounter), "", 1, -1, 0) 
	Next
	For intLoopCounter = 46 to 47
		strTextInput = Replace(strTextInput, CHR(intLoopCounter), "", 1, -1, 0) 
	Next
	For intLoopCounter = 58 to 96
		strTextInput = Replace(strTextInput, CHR(intLoopCounter), "", 1, -1, 0) 
	Next
	For intLoopCounter = 123 to 255
		strTextInput = Replace(strTextInput, CHR(intLoopCounter), "", 1, -1, 0) 
	Next

	characterStrip = strTextInput
End Function

If Request.QueryString("cmd") = "whois" Then
	strDomainName = characterStrip(Trim(Request.QueryString("domain")))
	strSuffix = LCase(Trim(Request.QueryString("suffix")))

	Private Function whoisResultsToScreen(whoisURL, strMethod, strResultsStart, strResultsEnd)
		Set objXMLHTTP = Server.CreateObject("Microsoft.XMLHTTP")
	        objXMLHTTP.Open strMethod, whoisURL, False
	        objXMLHTTP.Send
	        strwhoisResultsToScreenString = objXMLHTTP.ResponseText
	        If Len(strDomainName) < 3 Then
	        	whoisResultsToScreen = "Not Valid - must be at least 3 characters"
	        ElseIF InStr(1, strwhoisResultsToScreenString, "Error", vbTextCompare) Then
	        	whoisResultsToScreen = "An Error has occured"
	        Else
	        	whoisResultsToScreen = whoisResultsToScreenFormater(strwhoisResultsToScreenString, strResultsStart, strResultsEnd)
	        End If
	        Set objXMLHTTP = Nothing
	End Function
	Private Function whoisResultsToScreenFormater(strwhoisResultsToScreenString, strResultsStart, strResultsEnd)
		lngResultsStartPos = InStr(1, strwhoisResultsToScreenString, strResultsStart, 1) + Len(strResultsStart)
		lngResultsEndPos = InStr(lngResultsStartPos, strwhoisResultsToScreenString, strResultsEnd, 1)
		If lngResultsEndPos - lngResultsStartPos =< Len(strResultsStart) Then lngResultsEndPos = lngResultsStartPos + Len(strResultsStart)
		whoisResultsToScreenFormater = Trim(Mid(strwhoisResultsToScreenString, lngResultsStartPos, (lngResultsEndPos - lngResultsStartPos)))	
	End Function
	
	If strDomainName <> "" Then
	
		Response.Write("<html><head><meta http-equiv=""Content-Language"" content=""tr""><meta http-equiv=""Content-Type"" content=""text/html; charset=windows-1254""><title>AyyildizSoFT Whois Kontrol</title></head><body><pre><font color=red size=2>" & strDomainName & strSuffix & "</font><font color=black size=2> Whois Bilgileri<hr color=""red"">")
		Response.Write(whoisResultsToScreen("http://www.easydomaincheck.com/whois.php?domain=" & strDomainName & strSuffix , "GET", "Close Window</a></p>", "<p> <a href="))
		Response.Write("<hr color=""red""></pre></body></html>")    
	End If
Response.End
End If

Public Function whoisResult(whoisURL, strMethod, strCheckString)
	Set objXMLHTTP = Server.CreateObject("Microsoft.XMLHTTP")
        objXMLHTTP.Open strMethod, whoisURL, False
        objXMLHTTP.Send
        strWhoisResultString = objXMLHTTP.ResponseText
        If InStr(1, strWhoisResultString, strCheckString, vbTextCompare) Then
        	Result = "Available"
        ElseIF InStr(1, strWhoisResultString, "Error", vbTextCompare) Then
        	Result = "Error"
        Else
        	Result = "Taken"
        End If
        Set objXMLHTTP = Nothing
End Function
Private Function resultFormater(strWhoisResultString, strResultsStart, strResultsEnd)
	lngResultsStartPos = InStr(1, strWhoisResultString, strResultsStart, 1) + Len(strResultsStart)
	lngResultsEndPos = InStr(lngResultsStartPos, strWhoisResultString, strResultsEnd, 1)
	If lngResultsEndPos - lngResultsStartPos =< Len(strResultsStart) Then lngResultsEndPos = lngResultsStartPos + Len(strResultsStart)
	resultFormater = Trim(Mid(strWhoisResultString, lngResultsStartPos, (lngResultsEndPos - lngResultsStartPos)))	
End Function

if Request.QueryString("cmd") = "Add" Then
DomainName = Request.QueryString("Domain")
	function WriteToFile(FileName, Contents, Append)
		on error resume next
		if Append = true then
		   iMode = 8
		else 
		   iMode = 2
		end if
		set oFs = server.createobject("Scripting.FileSystemObject")
		set oTextFile = oFs.OpenTextFile(Server.MapPath(FileName), iMode, True)
		oTextFile.Write Contents
		oTextFile.Close
		set oTextFile = nothing
		set oFS = nothing
	end function
	WriteToFile "DomainList.txt", chr(13) & chr(10) & DomainName, True
Response.Write "<img src=""style/icon_transmit.png"">"
Response.End
End if

if Request.QueryString("cmd") = "ShowCache" Then
DomainName = Request.QueryString("Domain") %>
<br><table border="0" width="100%" id="table11" cellspacing="0" cellpadding="0">
				<tr>
					<td width="160" valign="top">
					<p align="center"><b>
					<font face="Microsoft Sans Serif" size="2" color="#C64934">
					KAYITLI ISIMLER</font></b><font face="Microsoft Sans Serif"><b><font color="#C64934" size="2"><br>
					</font></b><br>
					<img border="0" src="style/icon2.gif" width="48" height="48"></font></td>
					<td width="550" style="border: 1px solid #CCCCCC; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#E9ECEF" valign="top">
					<table border="0" width="100%" id="table12" cellspacing="0" cellpadding="0">
<%
Set fs=Server.CreateObject("Scripting.FileSystemObject")
Set f=fs.OpenTextFile(Server.MapPath("DomainList.txt"), 1)

Satir = 0
do while f.AtEndOfStream = false
	If (Satir mod 4) = 0 Then Response.Write("<tr>") %>
	<td width="25%"><b><font face="Microsoft Sans Serif" size="2" color="#336699"><%=Response.Write(f.ReadLine) %></font></b></td><%
	If (Satir mod 4) = 3 Then Response.Write("</tr>")
	Satir = Satir + 1
loop

f.Close
Set f=Nothing
Set fs=Nothing
%>
					</table>
					</td>
					<td width="50" valign="top">&nbsp;</td>
				</tr>
			</table><%
Response.End
End if %>
</head>
<body background="resimler/bg.gif">
<table border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="16" background="resimler/solbg.gif"></td>
    <td width="840">
	<div class="content">
<!--#include file="incler/ust.asp"-->
		<div class="bar">
			<ul>
                <li><a href="default.asp">Anasayfa  </a></li>
				<li><a href="hosting.asp">Windows &amp; Linux Hosting </a></li>
				<li><a href="reseller.asp">Reseller Hosting </a></li>
				<li><a href="domain.asp">Domain Hizmeti </a></li>
				<li><a href="sss.asp">S.S.S</a></li>

                <li><a href="iletisim.asp">İletişim</a></li>

			</ul>

</div>
						<!--#include file="incler/solmenu.asp"-->
<br>
<table border="1" width="571" id="table1" cellspacing="0" cellpadding="0" bgcolor="#000000" bordercolor="#CCCCCC" style="border-collapse: collapse">
		<tr>
			<td width="567" bgcolor="#FEECE0">
			  <table width="100%" height="94" border="0" cellpadding="0" id="table2" style="border-collapse: collapse">
				<tr>

					<td width="557" height="90" valign="top" bgcolor="#FCCBAB" style="border: 1px solid #CCCCCC; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
					<form method="POST" action="?cmd=Search">
						<table border="0" width="100%" id="table6" cellpadding="0" style="border-collapse: collapse">
							<tr>
								<td colspan="9">								<b>
								<font size="2" face="Microsoft Sans Serif">
								Domain Adı: </font></b></td>
							</tr>
							<tr>
								<td colspan="7">
								<input name="domain" type="text" size="40" style="font-family: Microsoft Sans Serif; font-size: 12pt; color: #336699; font-weight: bold; height: 25; width: 98%; border: 1px solid #CCCCCC" value="<%=characterStrip(Lcase(Server.HTMLEncode(Trim(Request("domain"))))) %>"/></td>
								<td width="19%" colspan="2">
								<font face="Microsoft Sans Serif"> 
								<input type="submit" value="Kontrol Et" style="color: #C64934; font-family: Microsoft Sans Serif; font-size: 12pt; font-weight: bold; height: 25; border: 1px solid #CCCCCC; background-color: #F1F3F5"/>
								</font></td>
							</tr>
							<tr>
								<td colspan="9">Uzantı Listesi: 
								</td>
							</tr>
							<tr>
								<td width="10%"><input type="checkbox" name="uzanti" value="com" checked><font face="Microsoft Sans Serif" size="2">.com</font></td>
								<td width="8%"><input type="checkbox" name="uzanti" value="net" checked><font face="Microsoft Sans Serif" size="2">.net</font></td>
								<td width="9%"><input type="checkbox" name="uzanti" value="org" checked><font face="Microsoft Sans Serif" size="2">.org</font></td>
								<td width="9%"><input type="checkbox" name="uzanti" value="biz"><font face="Microsoft Sans Serif" size="2">.biz</font></td>
								<td width="14%"><input type="checkbox" name="uzanti" value="com.tr"><font face="Microsoft Sans Serif" size="2">.com.tr</font></td>
							
							</tr>


						</table>
			      </form>				  </td>

				</tr>
			</table><% if Request.QueryString("cmd") = "Search" Then %><br>
<table border="1" id="table2" cellpadding="0" style="border-collapse: collapse">
  <tr><td width="564">
					<table width="100%" border="0" cellpadding="0" cellspacing="1" bordercolor="#CCCCCC" bgcolor="#FCCBAB" style="border-collapse: collapse">
						<tr>
							<td colspan="5"><b>
							<font size="2" face="Microsoft Sans Serif">								</font></b><b>
							<font size="2" face="Microsoft Sans Serif">Sonuçlar								</font></b></td>
						</tr>
						<tr>
						  <td width="5%">&nbsp;</td>
					      <td width="32%"><b><font size="2" face="Microsoft Sans Serif">Domain Adı:</font></b></td>
					      <td colspan="2"><b><font size="2" face="Microsoft Sans Serif">Durum:</font></b></td>
					      <td width="23%">&nbsp;</td>
					  </tr>
						<%
strDomainName  = characterStrip(Lcase(Server.HTMLEncode(Trim(Request("domain")))))
strSuffixArray = Split(LCase(request("uzanti")), ", ")
for each strSuffix in strSuffixArray
	Result = ""
	FullDomainName	= Lcase(Server.HTMLEncode(strDomainName &"."& strSuffix))

	If Right(strSuffix,3) = ".tr" Then
		Response.Write(whoisResult("http://www.easydomaincheck.com/whois.php?domain=" & strDomainName &"."& strSuffix , "GET", "No match"))
	ElseIf strSuffix = "com" Then
		Response.Write(whoisResult("http://www.easydomaincheck.com/whois.php?domain=" & strDomainName &"."& strSuffix , "GET", "No match"))
	ElseIf strSuffix = "net" Then
		Response.Write(whoisResult("http://www.easydomaincheck.com/whois.php?domain=" & strDomainName &"."& strSuffix , "GET", "No match"))
	ElseIf strSuffix = "org" Then
		Response.Write(whoisResult("http://www.easydomaincheck.com/whois.php?domain=" & strDomainName &"."& strSuffix , "GET", "NOT FOUND"))
	ElseIf strSuffix = "biz" Then
		Response.Write(whoisResult("http://www.easydomaincheck.com/whois.php?domain=" & strDomainName &"."& strSuffix , "GET", "Not found"))
	End If
	%>
<% If Result = "Available" Then %>




<form action="domainsatinal.asp" method="post">
		<tr>
		<td height="20"><p align="center"><img border="0" src="resimler/icon_true.gif" width="16" height="16"></td>
		<td height="20"><b><font face="Microsoft Sans Serif" size="2" color="#008080"><%=FullDomainName%>
		  <input name="domainadi" type="hidden" id="domainadi" value="<%=FullDomainName%>" />
		</font></b></td>
		<td width="33%" height="20"><b><font face="Microsoft Sans Serif" size="2" color="#008080">Alan adı müsait</font></b></td>
		<td width="7%"><select name="tescil" id="tescil">
		  <option value="1">1 Yıl - 13 YTL</option>
		  <option value="2">2 Yıl - 25 YTL</option>
		  <option value="3">3 Yıl - 35 YTL</option>
		  <option value="4">4 Yıl - 45 YTL</option>
		  <option value="5">5 Yıl - 55 YTL</option>
		  </select></td>
		<td height="20"><div>
		  <div align="center">
		    <input type="submit" name="Submit3" value="Sepetime Ekle" />
		  </div>
		</div></td>
		</tr>
		</form>
		
		
		
		
		
<% ElseIf Result = "Taken" Then %>
		<tr>
		<td height="20"><p align="center"><img border="0" src="resimler/icon_error.gif" width="16" height="16"></td>
		<td height="20"><font face="Microsoft Sans Serif" color="#FF0000" size="2"><a href="http://www.<%=FullDomainName%>" target="_blank"><%=FullDomainName%></a></font></td>
		<td height="20" colspan="2"><font face="Microsoft Sans Serif" size="2" color="#FF0000">Alan adı kayıtlı - <a href="#" onClick='window.open("?cmd=whois&domain=<%=strDomainName%>&suffix=.<%=strSuffix%>","_blank","width=650,height=500,status=yes,scrollbars=1,resizable=1");return false;'>Whois Bilgileri</a></font></td>
		<td height="20">&nbsp;</td>
		</tr>
<% ElseIf Result = "Error" Then %>
		<tr>
		<td height="20"><p align="center"><img border="0" src="resimler/icon_error.gif" width="16" height="16"></td>
		<td height="20"><font face="Microsoft Sans Serif" color="#FF0000" size="2"><%=FullDomainName%></font></td>
		<td height="20" colspan="2"><font face="Microsoft Sans Serif" size="2" color="#FF0000">Hata oluştu</font></td>
		<td height="20">&nbsp;</td>
		</tr>
<% Else %>
		<tr>
		<td height="20"><p align="center"><img border="0" src="resimler/icon_error.gif" width="16" height="16"></td>
		<td height="20"><font face="Microsoft Sans Serif" color="#FF0000" size="2"><%=FullDomainName%></font></td>
		<td height="20" colspan="2"><font face="Microsoft Sans Serif" size="2" color="#FF0000">Program Tarafından Tanımlanmayan Bir Olay Gerçekleşti,Lütfen Sayfayı Yenileyin.</font></td>
		<td height="20">&nbsp;</td>
		</tr>
<% End If
next
%>
			  </table>				  

			
			</td></tr></table>
			
			
			
			
			
			
            <div align="center">
              <% end if %>
            </div>
            <div id="Cache"></div>
		  <p align="right">
		  </td>
		</tr>
	</table>
        <div class="footer">
<img src="resimler/cizgi.gif" width="793" height="5" align="middle">
<p align="center"><a href="sitemap.xml"> Site Haritasi</a> |<a href="bankahesap.asp"> Banka Hesapları</a> | <a href="referanslar.asp">Referanslarımız</a> | <a href="iletisim.asp">Bize 
Ulaşin</a> | <a href="sozlesme.asp">Hizmet Sözleşmesi</a> | <a href="gizlilik.asp">Gizlilik ve Güvenlik</a> <a href="http://validator.w3.org/check?uri=referer"></a><br>
AyyildizSoFT İnternet Bilişim Hizmetleri Kayseri<br>
        Telefon :0554 778 79 63<br>
                    
    E-Mail: Destek@AyyildizSoFT.CoM</p>
      </div>
    </div>
 </td><td width="16" background="resimler/sagbg.gif"></td></tr>
</table>
</body></html>