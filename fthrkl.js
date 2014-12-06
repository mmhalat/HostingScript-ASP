// Fthrkl Domain Sorgulama Scripti || JAVASCRIPT
function fthrkl( ) { 
var objemiz; 
/*@cc_on @*/ 
/*@if (@_jscript_version >= 5 ) try { objemiz = new ActiveXObject("Msxml2.XMLHTTP" ); } 
catch (e ) { 
try { objemiz = new ActiveXObject("Microsoft.XMLHTTP" ); } 
catch (E ) { objemiz = false; } 
}@end @*/ 
if (!objemiz && typeof XMLHttpRequest!='undefined' ) { 
try {objemiz= new XMLHttpRequest( );} 
catch (e ) {objemiz=false;}} 
return objemiz;} 

function git(degerler,syf,alanadi ) { 
gonder = new fthrkl( );      
gonder.onreadystatechange = function ( ) {      
document.getElementById(alanadi ).innerHTML ="Sorgulaniyor..."; 
if( gonder.readyState == 4 ) { 
document.getElementById(alanadi ).innerHTML = gonder.responseText; function fthrkl( ) {};}} 
gonder.open('GET',syf+'?'+degerler, true ); 
gonder.send("" );      
} 
