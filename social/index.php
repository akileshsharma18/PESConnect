<?php
include_once"php/no-cache.php";
session_start();
if(isset($_SESSION['alphago_em']))
    header("location: main.php");
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PES CONNECT</title>
        <link rel="icon" href="img/logo.png">
        <link href="mdl/material.css" rel="stylesheet">
        <link href="css/jquery-ui.css" rel="stylesheet">
        <link href="css/jquery-ui.min.css.css" rel="stylesheet">
        <link href="css/alphago.css" rel="stylesheet">
        <style type="text/css">
            
            .title{
                color: #212121;
            }
            
            .cards{
                text-align: center;
                padding: 10px;
                background-color: rgba(255 ,255 ,255 , 0.9);
                margin: 10px;
                border-radius: 5px;
            }
            
            button{
                background-color: #212121;
            }
    #signin{
        top: 100px;
        height: 330px;
        position : absolute;
       	right: 30%;
        width: 40%;
    }
    #signup{
        position : absolute;
        top: 440px;
        right: 30%;
        width: 40%;
    }
    
    #console{
        text-align: center;
        position: fixed;
        top:350px;
        right: 0%;
        background-color: rgb(0,200,50);
        color: white;
        padding: 10px;
        opacity: 0;
    }
    #desc{
    	display:none;
        top: 0px;
        height: 0px;
        position : absolute;
        left: 0%;
        width: 0%;
        background: url('img/alphago.jpg') center/cover;
        opacity: 0.9;
    }
 
    #back{
        position: fixed;
        top: 0;
        bottom: 0;
        right: 0;
        left: 0;
        background: url('img/back.jpg') center/cover;
    }
    </style>
    <script>

        function LoadOnce(){
            window.location.reload(true);
        }
        function init(){
        xhr=new XMLHttpRequest();
        if(xhr){
            setTimeout(getContent, 1500);
        }
        function getContent()
        {
            xhr.onreadystatechange=showContent;
            xhr.open("GET","dis.txt",true);
            xhr.send(null);
        }
	}
        function showContent()
        {
            if(xhr.readyState=="4" && xhr.status==200)
            {
                document.getElementById("desc").innerHTML=xhr.responseText;
                setTimeout(getsign,Math.random()*(1000-2000)+1000);
            }
	}
        function getsign()
        {
            xhr.onreadystatechange=showsign;
            xhr.open("GET","sign.txt",true);
            xhr.send(null);
        }
        function showsign()
        {
            if(xhr.readyState=="4" && xhr.status==200)
            {
                document.getElementById("signin").innerHTML=xhr.responseText;
                setTimeout(getreg,Math.random()*(1000-1500)+1000);
            }
        }
        function getreg()
        {
            xhr.onreadystatechange=showreg;
            xhr.open("GET","reg.txt",true);
            xhr.send(null);
        }
        function showreg()
        {
            if(xhr.readyState=="4" && xhr.status==200)
            {
                document.getElementById("signup").innerHTML=xhr.responseText;
                //setTimeout(getreg,Math.random()*(1000-1500)+1000);
            }
        }

	var obj={
    	
        monitor:function(){
        var ev=new EventSource("a.php");
        ev.addEventListener("message",this.show,false);
        ev.onerror=this.err;
    
    
    },
    show:function(e){
        console.log(e.data);
        document.getElementById("count").innerHTML=e.data;	
    
    },
    err:function(){
            console.log("error");
    }
}
    
    </script>
    </head>
    <body onload='init()'>
        <div id="back"></div>
    <header class="header mdl-layout__header" >
	  <div class="mdl-layout__header-row" style="background-color: #ff6600;" >
	      <img src="img/logo.png"  alt="Logo" style="width:60px;">
              <h3 >PES CONNECT</h3>
        </div>
    </header> 
    <div class="cards mdl-card mdl-shadow--4dp" id="signin">
        
    </div>
   
    <div class="cards mdl-card mdl-shadow--4dp" id="desc">
                
    </div> 

        <div style="width: 10%;" id='console'></div>
    
    
    <div class="cards mdl-card mdl-shadow--4dp" id="signup">
    
    </div>
    
    <footer>
            
    </footer>
    <script src="script/jquery.min.js"></script>
    
    <script src="mdl/material.min.js"></script>
    <script src="script/jquery-ui.min.js"></script>
    <script src="script/jquery-ui.js"></script>
    <script>
    
        function register(){
            
            $("#console").animate({width: "200px", height: "60px", opacity: "1"}, 500)
                    
            if($("#option-1").val())
                    gender = "Female";
            if($("#option-2").val())
                    gender = "Male";
                
            $.post("php/a.php?a=register",
            {
                fullname: $("#fullname").val(),
                email: $("#email").val(),
                password: $("#password").val(),
                gender: gender,
                dob: $("#dob").val()
            },
            function(reply){
                if(reply == "success"){
                    $("#console").css("background-color","rgb(0,200,50)");
                    $("#console").html("you have succesfully registered");
                    $("#console").delay(1000).animate({width: "0px", height: "0px", opacity: "0"}, 500);
                }
                else{
                    $("#console").css("background-color","rgb(230,91,94)");
                    $("#console").html(reply + "<br>");
                }
                
            });
        }
        
        function login(){
            $("#console").animate({width: "200px", height: "60px", opacity: "1"}, 500)
                
            $.post("php/a.php?a=login",
            {
                email: $("#lemail").val(),
                password: $("#lpassword").val(),
            },
            function(reply){
                if(reply == "success"){
                    $("#console").css("background-color","rgb(0,200,50)");
                    $("#console").html("you have succesfully signed in.");
                    $("#console").delay(500).animate({width: "0px", height: "0px", opacity: "0"}, 200).delay(10,function(){
                        window.location.href = "main.php";
                    });
                }
                else{
                    $("#console").css("background-color","rgb(230,91,94)");
                    $("#console").html(reply + "<br>");
                }
                
            });
        }
        $('#dob').datepicker();
        
    </script>
    
    </body>
</html>
