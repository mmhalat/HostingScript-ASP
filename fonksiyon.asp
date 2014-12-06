<%
Function veri(system) 
system = Replace (system ,"'","",1,-1,1) 
system = Replace (system ,"<","",1,-1,1) 
system = Replace (system ,">","",1,-1,1) 
veri=system 
End Function
%>