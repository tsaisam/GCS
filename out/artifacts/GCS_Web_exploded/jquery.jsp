<%--
  Created by IntelliJ IDEA.
  User: tsaisam
  Date: 2015/5/27
  Time: 下午 05:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>jQuery UI Menu - Default functionality</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>
        $(document).ready(function () {
            $("#on").on({
                mouseenter: function () {
                    $(this).css("background-color", "lightgray");
                },
                mouseleave: function () {
                    $(this).css("background-color", "lightblue");
                },
                click: function () {
                    $(this).css("background-color", "yellow");
                }
            });
        });

        $(function () {
            $("#datepicker").datepicker();
        });
        $(function () {
            $("#progressbar").progressbar({
                value: 37
            });
        });
        $(function () {
            $("#menu").menu();
        });
        $(function () {
            $("#speed").selectmenu();

            $("#files").selectmenu();

            $("#number")
                    .selectmenu()
                    .selectmenu("menuWidget")
                    .addClass("overflow");
        });

        $(function () {
            $("#slider").slider();
        });

        $(function () {
            var spinner = $("#spinner").spinner();

            $("#disable").click(function () {
                if (spinner.spinner("option", "disabled")) {
                    spinner.spinner("enable");
                } else {
                    spinner.spinner("disable");
                }
            });
            $("#destroy").click(function () {
                if (spinner.spinner("instance")) {
                    spinner.spinner("destroy");
                } else {
                    spinner.spinner();
                }
            });
            $("#getvalue").click(function () {
                alert(spinner.spinner("value"));
            });
            $("#setvalue").click(function () {
                spinner.spinner("value", 5);
            });

            $("button").button();
        });

        $(function () {
            $("#tabs").tabs();
        });

        $(function () {
            $(document).tooltip();
        });

        $(function () {
            $("#button").click(function () {
                $("#effect").addClass("newClass", 1000, callback);
            });

            function callback() {
                setTimeout(function () {
                    $("#effect").removeClass("newClass");
                }, 1500);
            }
        });


        $(function () {
            // run the currently selected effect
            function runEffect() {
                // get effect type from
                var selectedEffect = $("#effectTypes").val();

                // most effect types need no options passed by default
                var options = {};
                // some effects have required parameters
                if (selectedEffect === "scale") {
                    options = {percent: 0};
                } else if (selectedEffect === "size") {
                    options = {to: {width: 200, height: 60}};
                }

                // run the effect
                $("#effect").toggle(selectedEffect, options, 500);
            };

            // set effect from select menu value
            $("#button").click(function () {
                runEffect();
            });
        });

    </script>
    <style>
        label {
            display: inline-block;
            width: 5em;
        }

        fieldset {
            border: 0;
        }

        label {
            display: block;
            margin: 30px 0 0 0;
        }

        select {
            width: 200px;
        }

        .overflow {
            height: 200px;
        }

        .ui-menu {
            width: 150px;
        }

        .newClass {
            text-indent: 40px;
            letter-spacing: .4em;
            width: 410px;
            height: 100px;
            padding: 30px;
            margin: 10px;
            font-size: 1.6em;
        }

        .toggler {
            width: 500px;
            height: 200px;
        }

        #button {
            padding: .5em 1em;
            text-decoration: none;
        }

        #effect {
            position: relative;
            width: 240px;
            height: 135px;
            padding: 0.4em;
        }

        #effect h3 {
            margin: 0;
            padding: 0.4em;
            text-align: center;
        }


    </style>
</head>
<body>

<p>Date: <input type="text" id="datepicker"></p>

<p id="on">Click or move the mouse pointer over this paragraph.</p>

<div id="progressbar"></div>

<ul id="menu">
    <li class="ui-state-disabled">Aberdeen</li>
    <li>Ada</li>
    <li>Adamsville</li>
    <li>Addyston</li>
    <li>Delphi
        <ul>
            <li class="ui-state-disabled">Ada</li>
            <li>Saarland</li>
            <li>Salzburg an der schönen Donau</li>
        </ul>
    </li>
    <li>Saarland</li>
    <li>Salzburg
        <ul>
            <li>Delphi
                <ul>
                    <li>Ada</li>
                    <li>Saarland</li>
                    <li>Salzburg</li>
                </ul>
            </li>
            <li>Delphi
                <ul>
                    <li>Ada</li>
                    <li>Saarland</li>
                    <li>Salzburg</li>
                </ul>
            </li>
            <li>Perch</li>
        </ul>
    </li>
    <li class="ui-state-disabled">Amesville</li>
</ul>

<div class="demo">
    <form action="#">
        <fieldset>
            <label for="speed">Select a speed</label>
            <select name="speed" id="speed">
                <option>Slower</option>
                <option>Slow</option>
                <option selected="selected">Medium</option>
                <option>Fast</option>
                <option>Faster</option>
            </select>

            <label for="files">Select a file</label>
            <select name="files" id="files">
                <optgroup label="Scripts">
                    <option value="jquery">jQuery.js</option>
                    <option value="jqueryui">ui.jQuery.js</option>
                </optgroup>
                <optgroup label="Other files">
                    <option value="somefile">Some unknown file</option>
                    <option value="someotherfile">Some other file with a very long option text</option>
                </optgroup>
            </select>

            <label for="number">Select a number</label>
            <select name="number" id="number">
                <option>1</option>
                <option selected="selected">2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
            </select>
        </fieldset>
    </form>
</div>


<div id="slider"></div>


<p>
    <label for="spinner">Select a value:</label>
    <input id="spinner" name="value">
</p>

<p>
    <button id="disable">Toggle disable/enable</button>
    <button id="destroy">Toggle widget</button>
</p>

<p>
    <button id="getvalue">Get value</button>
    <button id="setvalue">Set value to 5</button>
</p>

<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Nunc tincidunt</a></li>
        <li><a href="#tabs-2">Proin dolor</a></li>
        <li><a href="#tabs-3">Aenean lacinia</a></li>
    </ul>
    <div id="tabs-1">
        <p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi
            sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus
            auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci.
            Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius
            sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>
    </div>
    <div id="tabs-2">
        <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc.
            Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut
            tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam.
            Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc.
            Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat,
            tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris
            consectetur tortor et purus.</p>
    </div>
    <div id="tabs-3">
        <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula
            accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti
            sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel
            enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium
            nec, feugiat nec, luctus a, lacus.</p>

        <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla
            facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec
            mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam
            scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor,
            tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo.
            Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
    </div>
</div>


<p><a href="#" title="That&apos;s what this widget is">Tooltips</a> can be attached to any element. When you hover
    the element with your mouse, the title attribute is displayed in a little box next to the element, just like a
    native tooltip.</p>

<p>But as it's not a native tooltip, it can be styled. Any themes built with
    <a href="http://jqueryui.com/themeroller/" title="ThemeRoller: jQuery UI&apos;s theme builder application">ThemeRoller</a>
    will also style tooltips accordingly.</p>

<p>Tooltips are also useful for form elements, to show some additional information in the context of each field.</p>

<p><label for="age">Your age:</label><input id="age" title="We ask for your age only for statistical purposes."></p>

<p>Hover the field to see the tooltip.</p>


<div class="toggler">
    <div id="effect" class="ui-widget-content ui-corner-all">
        <h3 class="ui-widget-header ui-corner-all">Toggle</h3>

        <p>
            Etiam libero neque, luctus a, eleifend nec, semper at, lorem. Sed pede. Nulla lorem metus, adipiscing ut,
            luctus sed, hendrerit vitae, mi.
        </p>
    </div>
</div>

<select name="effects" id="effectTypes">
    <option value="blind">Blind</option>
    <option value="bounce">Bounce</option>
    <option value="clip">Clip</option>
    <option value="drop">Drop</option>
    <option value="explode">Explode</option>
    <option value="fold">Fold</option>
    <option value="highlight">Highlight</option>
    <option value="puff">Puff</option>
    <option value="pulsate">Pulsate</option>
    <option value="scale">Scale</option>
    <option value="shake">Shake</option>
    <option value="size">Size</option>
    <option value="slide">Slide</option>
</select>

<button id="button" class="ui-state-default ui-corner-all">Run Effect</button>


</body>
</html>
