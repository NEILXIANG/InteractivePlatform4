function SetCwinHeight()
{
var cwin=document.getElementById("taskurl");
if (document.getElementById)
{
if (cwin && !window.opera)
{
if (cwin.contentDocument && cwin.contentDocument.body.offsetHeight)
cwin.height = (cwin.contentDocument.body.offsetHeight)+"px"; 
else if(cwin.Document && cwin.Document.body.scrollHeight)
cwin.height = (cwin.Document.body.scrollHeight)+"px";
}
}
}
function refreshtask(url)
{
document.getElementById("taskurl").src=url; 
}