<%
' Fthrkl Domain Sorgulama Scripti || Class
session.codepage=1254
class fthrkl
sub fthrkldomain(adres)
on error resume next
git="http://www." & adres
Set  baglan = CreateObject("Microsoft.XMLHTTP") 
baglan.Open "get", git,  false  
baglan.Send  
test=baglan.getresponseheader("date")
if err.number=0 then
%>Domain kullanimdadir. (<font color="red">Alamazsiniz.</font>)<%
else
%>Domain kullanimda degildir. (<font color="red">Alabilirsiniz.</font>)<%
end if
end sub
end class
set islemler=new fthrkl
sayfa=request.QueryString("fthrkl")
if sayfa="sorgula" then
site=Server.HtmlEncode(trim(request.querystring("site")))

Function kontrol(veri)
if not veri="" then
veri=replace(veri,"www.","")
veri=replace(veri,"http://","")
veri=replace(veri,"http://www","")
end if
kontrol=veri
end function

islemler.fthrkldomain(kontrol(site))
end if
%>