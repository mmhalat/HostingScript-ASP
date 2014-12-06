<% IF Not session("giris")="tamam" Then %><div class="right"><form action="tanimla.asp" method="post">
			<h3>Müsteri Girisi </h3>
            
<div class="right_articles">Müsteri Adi :
  <input name="musadi" type="text" id="musadi" />
  <br>
  Sifreniz   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
  <input name="sifre" type="password" id="sifre" />    
  </div>
<div class="right_articles">
	  <p align="center">
	    <input type="submit" name="Submit" value="Giris" />
        <input type="reset" name="Submit2" value="Temizle" />
</p>

  </div></form>
</div>	<%else%>
<div class="right">
			<h3>Ho&#351;geldiniz Say&#305;n ; <%=session("musadi")%></h3>
            
            <div class="right_articles">
			  <div align="left"><img src="resimler/hosting.png" border="0">&nbsp;&nbsp;<a href="girdihost.asp">Web Hostinglerim</a><br>
                <img src="resimler/reseller.png" border="0">&nbsp;&nbsp;<a href="girdireseller.asp">Reseller Hostinglerim</a><br>
	            <img src="resimler/domain.png" border="0">&nbsp;&nbsp;<a href="girdidomain.asp">Domainlerim</a><br>
                <img src="resimler/odemebildirimi.png" width="15" border="0">&nbsp;&nbsp;<a href="ode.asp">Ödeme Bildirimi</a><br>
                <img src="resimler/edestek.png" width="15" border="0">&nbsp;&nbsp;<a href="destek.asp">E-Destek</a><br>
                <img src="resimler/cikis.png" width="15" border="0">&nbsp;&nbsp;<a href="cik.asp">Güvenli Çikis</a><br>
              </div>
  </div>

</div>	
<%
end if
Set haber = Server.CreateObject ("ADODB.RecordSet")
sql = "select * from haber order by id desc"
haber.open sql,baglanti,1,3
Set haber2 = Server.CreateObject ("ADODB.RecordSet")
sql = "select * from haber"
haber2.open sql,baglanti,1,3

%>
<div class="right">
	  <h3>Siteden Haberler </h3> 
<div class="right_articles">
<img src="resimler/ok.gif" border="0">&nbsp;<a href="haber.asp?id=<%=haber("id")%>"><%=haber("baslik")%><br></a>
  <%=left(haber("haber"),100)%>...</div>
  <div class="right_articles">
<img src="resimler/ok.gif" border="0">&nbsp;<a href="haber.asp?id=<%=haber2("id")%>"><%=haber2("baslik")%><br></a>
  <%=left(haber2("haber"),100)%>...</div>
</div><% 
haber.movenext
haber.close
set haber=nothing
%>
<%
Set kampanya = Server.CreateObject ("ADODB.RecordSet")
sql = "select * from kampanya order by id desc"
kampanya.open sql,baglanti,1,3

if kampanya.recordcount<>0 then
topla=kampanya.Recordcount 
shf = Request.QueryString("shf")
if shf="" then shf=1
%> 
          <%
yon=0
kampanya.pagesize = 1
kampanya.absolutepage = shf
sayfala = kampanya.pagecount
for i=1 to kampanya.pagesize
if kampanya.eof then exit for
yon=yon+1
%>
<div class="right">
	  <h3>Kampanyalar</h3> 
      <div class="right_articles">
<img src="resimler/ok.gif" border="0">&nbsp;<a href="kampanya.asp?id=<%=kampanya("id")%>"><%=kampanya("baslik")%><br></a>
  <%=left(kampanya("kampanya"),100)%>..</div>
</div><% 
kampanya.movenext
next
kampanya.close
set kampanya=nothing
end if

%>
