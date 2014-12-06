<%
Subject = request.form("subject")
Email = request.Form("Email")
Mesaj = request.Form("Mesaj")
Dim objMessage
Set objMessage = Server.CreateObject("CDO.Message")
objMessage.Subject = "Subject"
objMessage.From = "iletisim@ayyildizsoft.com"
objMessage.To = "Email"
objMessage.TextBody = "Mesaj"

objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2

objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1

objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "webmail.ayyildizsoft.com"

objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/sendusername") = "iletisim@ayyildizsoft.com"

objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "147852369"

objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25

objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = False

objMessage.Configuration.Fields.Item _
("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60

objMessage.Configuration.Fields.Update

objMessage.Send
Set objMesage = Nothing
%> 
<center>Mesaj GÖNDERILDI!</center>