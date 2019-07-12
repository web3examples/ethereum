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

var pathArray = decodeURIComponent(window.location.pathname).split( '/' );
var filename=pathArray.pop();
filename=filename.replace(".html", "")
var header=document.createElement("h1");
header.innerText=filename;
document.body.appendChild(header);

var ipfs_element = document.getElementById("ipfs")
ipfs_element.hidden=true;

var video=document.createElement("video");
//video.src="https://siderus.io/ipfs/"+ipfs_element.innerText;
video.src="http://www.gpersoon.com:8080/ipfs/"+ipfs_element.innerText;
video.class="videoplayer";
video.controls=true;
video.height='400'; 
video.autoplay=true; 
video.muted=true;  // otherwise not playing automatically
video.ontimeupdate = function() {VideoLocation()}; // call function when movie at different location
document.body.appendChild(video);

var position=document.createElement("p");

document.body.appendChild(position);



var table=document.createElement("table");
table.style.borderCollapse = "collapse";
document.body.appendChild(table);

var timetable_element=document.getElementById("timetable");
timetable_element.hidden=true;
var txt = timetable_element.innerText;
var alldata=[];    
var lines=txt.split("\n");
for (let line of lines) {  
    if (line.length >0) { // skip empty lines
        var linedata=line.split("|");
        linedata = linedata.map(str => str.trim()); // strip spaces
        alldata.push(linedata);
    }
}
generateTableHead(table,alldata[0]);
var TimeIndex=alldata[0].indexOf('Time');
generateTable(table,alldata.slice(1));
            
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
  var id=Number(event.target.parentNode.id);
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
      let text = document.createTextNode(sub[key]);
      cell.appendChild(text);
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
    var t= video.currentTime;
    position.innerText="Position: "+t.toFixed(0)+" seconds";
    function check  (x) { return Number(x[TimeIndex] >= t); } 
    var y= alldata.findIndex(check )  ;    
    if (y >=0  && y != previous_row ) {
        if (previous_row >=0)
            document.getElementById(previous_row.toString()).style.backgroundColor=previous_colour;
        previous_colour=document.getElementById(y.toString()).style.backgroundColor;
        previous_row=y;
        document.getElementById(y.toString()).style.backgroundColor = "lightgray";
    }
 }   
    

