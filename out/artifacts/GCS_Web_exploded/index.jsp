<%--
  Created by IntelliJ IDEA.
  User: tsaisam
  Date: 2015/3/23
  Time: 下午 04:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<style>:invalid {
    background-color: grey;
}</style>
<input type="email" value="email.com">


<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <polyline points="60,80 60,60 40,60 40,40 20,40,20,20 0,20" style="fill:white;stroke:red;stroke-width:4"/>
</svg>


<style type="text/css">
    div {
        color: red;
    }

    div[title] {
        color: black;
    }

    div[title=exam] {
        color: blue;
    }

    div[title~=exam] {
        color: green;
    }

    #mystyle p {
        background-color: white;
        color: black;
    }

    p r {
        background-color: black;
        color: white;
    }

    #grad1 {
        height: 200px;
        background: linear-gradient(red, white, blue);
    }

    #grad2 {
        height: 150px;
        width: 200px;
        background: radial-gradient(white, green, blue);
    }
</style>
<div title="css exam">網頁內容</div>


<div id="mystyle">
    <p>
        <r>網頁</r>
        內容
    </p>
</div>

<div id="grad1"></div>

<div id="grad2"></div>

<svg height="150" width="500">
    <defs>
        <radialGradient id="grad1" cx="50%" cy="50%" r="50%" fx="50%" fy="50%">
            <stop offset="0%" style="stop-color:rgb(255,255,255);stop-opacity:0"/>
            <stop offset="100%" style="stop-color:rgb(0,0,255);stop-opacity:1"/>
        </radialGradient>
    </defs>
    <ellipse cx="200" cy="70" rx="85" ry="55" fill="url(#grad1)"/>
    Sorry, your browser does not support inline SVG.
</svg>

<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
        <radialGradient id="grad1" cx="20%" cy="20%" r="50%" fx="50%" fy="50%">
            <stop offset="0%" style="stop-color:rgb(255,255,255);stop-opacity:0"/>
            <stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:1"/>
        </radialGradient>
    </defs>
    <ellipse cx="200" cy="70" rx="85" ry="55" fill="url(#grad1)"/>
    Sorry, your browser does not support inline SVG.
</svg>

<script type="text/javascript">
    var x, X;
    x = 1 + 2;
    X = "3" + "4";
    document.write(x + X);
</script>


<p>Click the button to get your coordinates.</p>

<button onclick="getLocation()">Try It</button>

<p id="demo"></p>

<script>
    var x = document.getElementById("demo");

    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition, showError);
        } else {
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }

    function showPosition(position) {
        x.innerHTML = "Latitude: " + position.coords.latitude +
        "<br>Longitude: " + position.coords.longitude;
    }

    function showError(error) {
        switch (error.code) {
            case error.PERMISSION_DENIED:
                x.innerHTML = "User denied the request for Geolocation."
                break;
            case error.POSITION_UNAVAILABLE:
                x.innerHTML = "Location information is unavailable."
                break;
            case error.TIMEOUT:
                x.innerHTML = "The request to get user location timed out."
                break;
            case error.UNKNOWN_ERROR:
                x.innerHTML = "An unknown error occurred."
                break;
        }
    }
</script>


Text File Reader

<div id="page-wrapper">

    <h1>Text File Reader</h1>

    <div>
        Select a text file:
        <input type="file" id="fileInput">
    </div>
		<pre id="fileDisplayArea"></pre>

</div>

<style type="text/css">

    #page-wrapper {
        width: 600px;
        background: #FFF;
        padding: 1em;
        margin: 1em auto;
        min-height: 300px;
        border-top: 5px solid #69c773;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.8);
    }

    h1 {
        margin-top: 0;
    }

    img {
        max-width: 100%;
    }

    #fileDisplayArea {
        margin-top: 2em;
        width: 100%;
        overflow-x: auto;
    }
</style>


<script>
    window.onload = function () {
        var fileInput = document.getElementById('fileInput');
        var fileDisplayArea = document.getElementById('fileDisplayArea');

        fileInput.addEventListener('change', function (e) {
            var file = fileInput.files[0];
            var textType = /text.*/;

            if (file.type.match(textType)) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    fileDisplayArea.innerText = reader.result;
                }

                reader.readAsText(file);
            } else {
                fileDisplayArea.innerText = "File not supported!"
            }
        });
    }
</script>


<div>
    <img src="GPGS.JPG" Alt="Bubbles,sitting in his office chair,work on his latest project intently.">
    <dfn>Bubbles at work</dfn>
</div>


</html>
