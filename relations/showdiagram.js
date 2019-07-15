var pathArray = decodeURIComponent(window.location.pathname).split( '/' );
var filename=pathArray.pop();
filename=filename.replace(".html", "")
var header=document.createElement("h1");
header.innerText=filename;
document.body.appendChild(header);

var scriptTag = document.createElement('script');
scriptTag.src = "https://cdnjs.cloudflare.com/ajax/libs/mermaid/8.1.0/mermaid.min.js"
scriptTag.onload = implementationCode;
document.body.appendChild(scriptTag);
var mermaid_element = document.getElementById("mermaid")
mermaid_element.hidden=true;
var output=document.createElement("div");
document.body.appendChild(output);


function implementationCode() {
    mermaid.initialize({startOnLoad: false});  
    try {
        mermaid.render('theGraph', mermaid_element.innerText, function(svgCode) { output.innerHTML = svgCode; }); 
    }
    catch(error) {
        var pre=document.createElement("pre");
        document.body.appendChild(pre);
        pre.innerHTML=error;
    }
}
