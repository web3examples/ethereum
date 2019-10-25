/*
This javascript show videos plus timetable. The timetable progresses with the process of the video.
The video can also be started from a certain point by clicking on the table
The video's are stored on IPFS and are referenced by their id
The time table is stored in the HTML file.

Input file:
{title}.html
<div id="ipfs">.{id}..</div>
<div id="timetable">
Location| Action| Object   | Time
...     | ....  | ....     | 2
</div>
<script src="showvideo.js"></script>
*/

<script src="https://code.responsivevoice.org/responsivevoice.js?key=wwYbW8EZ"></script>



var pathArray = decodeURIComponent(window.location.pathname).split( '/' );
var filename=pathArray.pop();
filename=filename.replace(".html", "")
var header=document.createElement("h1");
header.innerText=filename;
document.body.insertAdjacentElement("afterbegin", header)

var ipfs_element = document.getElementById("ipfs")
ipfs_element.hidden=true;

function videoerror(event)
{   let error = event;
    if (event.path && event.path[0]) {     // Chrome v60
      error = event.path[0].error;
    }    
    if (event.originalTarget) { // Firefox v55
      error = error.originalTarget.error;
    }
    alert(`Video error: ${error.message}`);     // Here comes the error message
}

var video=document.createElement("video");
//video.src="https://siderus.io/ipfs/"+ipfs_element.innerText;
video.src="http://www.gpersoon.com:8080/ipfs/"+ipfs_element.innerText;
video.class="videoplayer";
video.controls=false;
video.style.height="30%";
video.autoplay=true; 
video.muted=true;  // otherwise not playing automatically
video.ontimeupdate = function() {VideoLocation()}; // call function when movie is at a different location
video.addEventListener('error', videoerror, true);
document.body.appendChild(video);

var newline=document.createElement("br");
document.body.appendChild(newline);

CreateButton("Rewind",          ()=> video.currentTime =0 );
CreateButton("Back 1 sec",      ()=> video.currentTime -=1 );
CreateButton("Forward 1 sec",   ()=> video.currentTime +=1 );
CreateButton("Back 30 sec",     ()=> video.currentTime -=30 );
CreateButton("Forward 30 sec",  ()=> video.currentTime +=30 );
CreateButton("25% slower",      ()=> {video.playbackRate *=0.75;video.play();});
CreateButton("Normal speed",    ()=>{video.playbackRate =1;video.play();} );
CreateButton("25% faster",      ()=> {video.playbackRate *=1.25;video.play();} );
CreateButton("Pause",           ()=> video.pause() );
CreateButton("Play",            ()=> video.play() );
CreateButton("Toggle controls", ()=> { video.controls= !video.controls;} );
CreateButton("Toggle audio",    ()=> { video.muted= !video.muted;} );
CreateButton("25% smaller",     ()=> { video.style.height = 0.75 * parseFloat(video.style.height)+"%" } );
CreateButton("25% larger",      ()=> { video.style.height = 1.25 * parseFloat(video.style.height)+"%" } );
CreateButton("Full screen",     ()=> { video.requestFullscreen(); } );
CreateButton("Voice comments",  ()=> { responsiveVoice.speak(document.getElementById("explain").innerText) } );

var position=document.createElement("p");
document.body.appendChild(position);

var tablediv=document.createElement("div");
tablediv.style.overflowY="auto";
tablediv.style.height="30%";
tablediv.style.outline="1px";
tablediv.style.outlineStyle="solid";

var table=document.createElement("table");
table.style.borderCollapse = "collapse";
tablediv.appendChild(table)
document.body.appendChild(tablediv);

var alldata = ReadTimeTable(table);
var TimeIndex=alldata[0].indexOf('Time');
            
var chat=document.createElement("iframe");
chat.src="https://gitter.im/web3examples/community/~embed"
chat.width="100%"
chat.height="200"
chat.style.outline="1px";
chat.style.outlineStyle="solid";
document.body.appendChild(chat);


 //<iframe src= height="100%" width="100%" ></iframe>  
            
//var header=document.createElement("h2");
//header.innerText=filename;
//document.body.insertAdjacentElement("afterbegin", header)

/////////////////////////////// Functions
            
function CreateButton(name,funct) {
    var buttonback=document.createElement("button");
    buttonback.innerHTML = name;
    buttonback.addEventListener("click", funct);
    document.body.appendChild(buttonback);
}      
            
            
function generateTableHead(table, data) {
  let thead = table.createTHead();
  let row = thead.insertRow();
  for (let key of data) {
    let th = document.createElement("th");
    th.style.border="1px solid";
    let text = document.createTextNode(key);
    th.appendChild(text);
    row.appendChild(th);
  }
}

function rowclick(event) {  

    var node=event.target    
    var id=node.id;
    if (!id) { node=node.parentNode;id=node.id;}
    if (!id) { node=node.parentNode;id=node.id;} // to handle the "pre"'s
    if (!id) return; // no id found
    var time=Number(alldata[id][TimeIndex]);
    if (isNaN(time)) time=0;
    video.currentTime=time;
}

function generateRow(table, sub,rownr) {
let row = table.insertRow();
row.setAttribute("id", rownr.toString());
row.addEventListener("click", rowclick);

  for (key in sub) {
      let cell = row.insertCell();
      cell.style.border="1px solid";
      cell.innerHTML = sub[key];
      //let text = document.createTextNode(sub[key]);
      //cell.appendChild(text);
    }
}

function generateTable(table, data) {
  rownr=1;  // header is 0
  for (let element of data) {    
    generateRow(table,element, rownr++);
  }
}

var previous_colour=""
var previous_row=-1;
    

    
function VideoLocation() {
    
    position.innerText=`Position: ${video.currentTime.toFixed(0)}`;
    
    var tPlayed=0;
    for (let i=0;i< video.played.length;i++) {
        tPlayed += video.played.end(i) - video.played.start(i);
    }
    position.innerText+=` Played: ${tPlayed.toFixed(0)}`;

    position.innerText+=` (of ${video.duration.toFixed(0)} seconds)`;
    position.innerText+=` speed=${video.playbackRate.toFixed(1)}`;
    
    
    
    function check  (x) { return Number(x[TimeIndex] >= video.currentTime); } 
    var y= alldata.findIndex(check )  ;    
    if (y >=0  && y != previous_row ) {
        if (previous_row >=0)
            document.getElementById(previous_row.toString()).style.backgroundColor=previous_colour;
        previous_colour=document.getElementById(y.toString()).style.backgroundColor;
        previous_row=y;
        document.getElementById(y.toString()).style.backgroundColor = "lightgray";
    }
}   

function ReadTimeTable(table)  {
console.log("In ReadTimeTable");
    var timetable_element=document.getElementById("timetable");
    timetable_element.hidden=true;
    var txt = timetable_element.innerText;
    var tabledata=[];    
    var lines=txt.split("\n");
    if (lines[lines.length-1]=="") lines.pop(); // get rid of last empty line
    do {
        let line=lines.shift();
        if (line.length==0) { continue;}  // skip empty lines
        var linedata=line.split("|");
        var outputline=[];
        for (let part of linedata) {
            part = part.trim();
            if (part.length==0) { // get data from the next lines
                var txt=""
                do {
                    line=lines.shift();
                    if (lines.length==0) { break;}  // extra end check                    
                    var fBarFound=(line.indexOf("|") >=0) 
                    if (!fBarFound)
                        txt += line+"<br>";
                } while (lines.length >0 && !fBarFound )
                part = "<pre>"+txt+"</pre>";
                if (fBarFound) lines.unshift(line);
            }
            outputline.push(part);
        }
        tabledata.push(outputline);
    } while (lines.length >0);
    generateTableHead(table,tabledata[0]);
    generateTable(table,tabledata.slice(1));
    return tabledata;
}             


