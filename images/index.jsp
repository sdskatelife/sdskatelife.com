<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                margin: 0 auto;
                color: #3D251D; /*  brick brown */
            }
            #maindiv {
                margin: 0 auto;
                position: relative;
                text-align: center;
                width: 1020px;
                height: 1008px;
                color: #3D251D; /* brick brown */
                background-image: url(images/sdsl/sdslbricks.jpg);
                background-repeat: repeat-y;
            }
            #topnav {
                position: relative;
                top: 40px;
                left: 120px;
                /*height: 30px;*/
                line-height: 30px;
                vertical-align: middle;
                z-index: 3;
                /*background-color: red;*/
            }
            #whitebox {
                position: relative;
                margin: 0 auto;
                text-align: center;
                background-color: white;
                width: 930px;
                height: 700px;
                top: -280px;
                z-index: 0;
            }
            #topbox {
                position: relative;
                margin: 0 auto;
                text-align: center;
                width: 848px;
                height: 389px;
                top: 21px;
                background-image: url(images/sdsl/sdsltopbox.png);
                z-index: 2;
            }
            #toplogobox {
                position: absolute;
                width: 238px;
                height: 95px;
                top: 50px;
                left: 55px;
                background-image: url(images/sdsl/sdsl-logo.png);
            }
            #topslogan {
                position: absolute;
                width: 220px;
                /*height: 77px;*/
                top: 220px;
                left: 55px;
                font-family: Tahoma;
                font-size: 25px;
                text-align: left;
                font-weight: bold;
                color: #5c8727;
            }
            #topslidebox {
                position: absolute;
                width: 490px;
                height: 303px;
                top: 42px;
                left: 318px;
                background: black;
                -webkit-border-top-right-radius: 0.5em;
                -moz-border-radius-topright: 0.5em;
                border-top-right-radius: 0.5em;
                -webkit-border-bottom-right-radius: 0.5em;
                -moz-border-radius-bottomright: 0.5em;
                border-bottom-right-radius: 0.5em;
            }
            .navbtn {
                font-family: Tahoma;
                font-size: .9em;
                color: #ffffff;
                margin-right: 55px;
                float: left;
            }
            .navbtn:hover {
                text-decoration: none;
                color: #5c8727;
                cursor: pointer;
            }
            .navactivebtn {
                background-color: #b1953a;
                -webkit-border-top-right-radius: 0.5em;
                -moz-border-radius-topright: 0.5em;
                border-top-rightt-radius: 0.5em;
                -webkit-border-top-left-radius: 0.5em;
                -moz-border-radius-topleft: 0.5em;
                border-top-left-radius: 0.5em;
                padding-left: 10px;
                padding-right: 10px;
            }
            #footerbox {
                position: relative;
                margin: 0 auto;
                text-align: center;
                background-color: #A1842D;
                height: 140px;
                width: 930px;
                top: -276px;
                z-index: 0;
            }
            #footerlogo {
                position: relative;
                float: left;
                width: 55px;
                height: 67px;
                top: 40px;
                left: 30px;
                background-image: url(images/sdsl/sdslfooterlogo.png);
            }
            #footerinfo {
                position: relative;
                float: left;
                width: 900px;
                height: 100px;
                top: -30px;
                left: 130px;
                font-family: Tahoma;
                font-size: 1em;
                font-weight: bold;
                color: #ffffff;
            }
            #leftnav {
                position: relative;
                width: 214px;
                height: 360px;
                /*background-color: blue;*/
                top: 304px;
                left: 40px;
            }
            .lnavbtn {
                height: 53px;
                width: 214px;
                font-family: Tahoma;
                font-size: 1em;
                font-weight: bold;
                color: #5c8727;
                margin-top: 15px;
                background-image: url(images/sdsl/sdslbuttonnative.png) ;
            }
            .lnavbtn:hover {
                background-image: url(images/sdsl/sdslbuttonhover.png) ;
                color: #3D251D; /* brick brown */
                cursor: pointer;
                /*height: 40px;*/
            }
            .lnavactivebtn {
                background-image: url(images/sdsl/sdslbuttonhover.png) ;
                color: #3D251D; /* brick brown */
            }
            #followdiv {
                position: relative;
                height: 67px;
                width: 130px;
                top: -506px;
                left: 270px;
                background-image: url(images/sdsl/sdslfollowus.png) ;
                z-index: 1;
            }
            #followlinks {
                position: relative;
                float: left;
                height: 50px;
                width: 180px;
                top: -512px;
                left: 100px;
                z-index: 1;
            }
            .followimgs {
                float: left;
                margin-right: 10px;
            }
            .sdsl {
                text-decoration: none;
                color: #ffffff;
            }
            .sdsl:hover {
                text-decoration: none;
                color: #5c8727;
            }
        </style>
        <link href="css/sequencejs-theme.modern-slide-in.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery-1.10.1.min.js" type="text/javascript" language="JavaScript"></script>
        <script src="js/jquery.sequence-min.js"></script>
        <script src="js/sequencejs-options.modern-slide-in.js"></script>
        <script>
            $(document).ready(function(){
console.log("starting");
                var tb = $("#topslidebox").sequence().data("sequence");
console.log("completing");
            });
            function goto(w)
            {
                $("#topnav").find("div").siblings().removeClass("navactivebtn");
                $("#leftnav").find("div").siblings().removeClass("lnavactivebtn");
                $("#topnav").find("#"+w).addClass("navactivebtn");
                $("#leftnav").find("#"+w).addClass("lnavactivebtn");
            }
        </script>
    </head>
    <body>
        <div id="maindiv">
            <div id="topnav">
                <div id="homebtn" class="navbtn navactivebtn" onclick="javascript: goto('homebtn');">HOME</div>
                <div id="aboutbtn" class="navbtn" onclick="javascript: goto('aboutbtn');">ABOUT US</div>
                <div id="contactbtn" class="navbtn" onclick="javascript: goto('contactbtn');">CONTACT US</div>
                <div id="merchandisebtn" class="navbtn" onclick="javascript: goto('merchandisebtn');">MERCHANDISE</div>
                <div id="testimonialsbtn" class="navbtn" onclick="javascript: goto('testimonialsbtn');">TESTIMONIALS</div>
                <div id="signupbtn" class="navbtn" onclick="javascript: goto('signupbtn');">SIGN ME UP!</div>
                <div style="clear: both;"></div>
            </div>
            <div id="topbox">
                <div id="toplogobox"></div>
                <div id="topslogan">Inspiring the next generation of skateboarders</div>
                <div id="topslidebox">
<!--<div id="sequence">
    <ul class="sequence-canvas">
        <li class="animate-in">
            <div class="info1">
                <p>Frame 1 information</p>
            </div>
            <img class="my-image" src="my-image.jpg" alt="An image of me" />
        </li>
        <li>
            <div class="info2">
                <p>Frame 2 information</p>
            </div>
        </li>
        <li>
            <div class="info3">
                <p>Frame 3 information</p>
            </div>
        </li>
    </ul>
</div>-->
                    <ul class="sequence-canvas">
                        <li>
                            <div class="info1"><img src="images/home.jpg" /></div>
                        </li>
<!--                        <li>
                            <div class="info2">
                                <p>Frame 2</p>
                            </div>
                        </li>
                        <li>
                            <div class="info3">
                                <p>Frame 3</p>
                            </div>
                        </li>-->
                    </ul>
                </div>
            </div>
            <div id="whitebox">
                <div id="leftnav">
                    <div id="safetybtn" class="lnavbtn" onclick="javascript: goto('safetybtn');">Skate Safety</div>
                    <div id="lessonsbtn" class="lnavbtn" onclick="javascript: goto('lessonsbtn');">Private Lessons</div>
                    <div id="campsbtn" class="lnavbtn" onclick="javascript: goto('campsbtn');">Camps</div>
                    <div id="classesbtn" class="lnavbtn" onclick="javascript: goto('classesbtn');">Classes & Clinics</div>
                    <div id="eventsbtn" class="lnavbtn" onclick="javascript: goto('eventsbtn');">Local Skate Events</div>
                </div>
            </div>
            <div id="footerbox">
                <div id="footerlogo"></div>
                <div id="footerinfo">
                    <div style="font-size: 1.2em; text-align: left;">Contact Information</div>
                    <div style="font-size: 1.1em; font-weight: normal; text-align: left; margin-left: 30px; margin-top: 20px;">619-354-7998</div>
                    <div style="margin-left: 30px; font-weight: normal;">
                        <div style="float: left; font-size: .9em;">andrew@sdskatelife.com</div>
                        <div style="float: left; font-size: .9em; margin-left: 100px;">&copy; 2013 SD Skate Life</div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
            <div id="followdiv"></div>
            <div id="followlinks">
                <div class="followimgs"><a href="#"><img src="images/sdsl/sdslfacebook.png" /></a></div>
                <div class="followimgs"><a href="#"><img src="images/sdsl/sdslinstagram.png" /></a></div>
                <div class="followimgs"><a href="#"><img src="images/sdsl/sdslyoutube.png" /></a></div>
                <div style="clear: both;"></div>
            </div>
        </div>
    </body>
</html>
