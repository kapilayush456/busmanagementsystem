<%-- 
    Document   : login
    Created on : Mar 29, 2019, 12:13:18 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
<head>
    <style>
    body
    { 
        margin:0; 
        font:normal 75% Arial, Helvetica, sans-serif;
     }
     canvas
     { 
        display: block; 
        vertical-align: bottom; 
    } 
     #particles-js
     { 
        position:absolute; 
        width: 100%; 
        height: 100%;
         background-color: #323840; 
         background-image: url("image.jpg"); 
         background-repeat: no-repeat; 
         background-size: cover; 
         background-position: 50% 50%; 
     } 

            h1
            {
                color: #B6FF00;
            }
            .name
            {
                padding: 12px 5px;
                border-radius: 15px 15px 15px 15px;
                width: 300px;
            }
            .pwd
            {
                padding: 12px 5px;
                width: 300px;
                border-radius: 15px 15px 15px 15px;
            }
            .select
            {
                 padding: 12px 5px;
                 border-radius: 15px 15px 15px 15px;
                 width: 315px;
            }
            .container
            {
                position: absolute;
                border-radius: 25px;
                text-align: center;
                margin:200px 500px;
                box-sizing: border-box;
            }
            #login
            {
                padding: 12px 5px;
                border-radius: 15px;
                width: 315px;
                background-color: #49FF00;
                text-align: center;
                font-size: 15px;
                display: inline-block;
                font-stretch: ultra-expanded;
            }
            a
            {
                color:#49FF00  ;
            }
            p
            {
                color:#E0E0E0   ;
            }
</style>
</head>
<body>
<div id="particles-js">
    <center>
    <div class="container">
        <form action="Logservlet" method="post">
            <input type="text" name="username" placeholder="Username" class="name"><br><br>
            <input type="password" name="password" placeholder="Password" class="pwd"><br><br>
                <select name="selects" class="select">
                    <option value="Admin">Admin</option>
                    <option value="Management">Management</option>
                    <option value="Student">Student</option>
                </select><br><br>
                <input type="submit" value="Login" id="login">
            </form>
        </div>
    </center>
</div> 
<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> 
<script src="https://threejs.org/examples/js/libs/stats.min.js"></script>
</body>
<script type="text/javascript">
    particlesJS("particles-js", {
  "particles": {
    "number": {
      "value": 88,
      "density": {
        "enable": true,
        "value_area": 700
      }
    },
    "color": {
      "value": ["#aa73ff", "#f8c210", "#83d238", "#33b1f8"]
    },
    "shape": {
      "type": "circle",
      "stroke": {
        "width": 0,
        "color": "#000000"
      },
      "polygon": {
        "nb_sides": 15
      }
    },
    "opacity": {
      "value": 1,
      "random": false,
      "anim": {
        "enable": false,
        "speed": 1.5,
        "opacity_min": 0.15,
        "sync": false
      }
    },
    "size": {
      "value": 2.5,
      "random": false,
      "anim": {
        "enable": true,
        "speed": 2,
        "size_min": 0.15,
        "sync": false
      }
    },
    "line_linked": {
      "enable": true,
      "distance": 110,
      "color": "#33b1f8",
      "opacity": 0.85,
      "width": 1
    },
    "move": {
      "enable": true,
      "speed": 1.6,
      "direction": "none",
      "random": false,
      "straight": false,
      "out_mode": "out",
      "bounce": false,
      "attract": {
        "enable": false,
        "rotateX": 600,
        "rotateY": 1200
      }
    }
  },
  "interactivity": {
    "detect_on": "canvas",
    "events": {
      "onhover": {
        "enable": false,
        "mode": "repulse"
      },
      "onclick": {
        "enable": false,
        "mode": "push"
      },
      "resize": true
    },
    "modes": {
      "grab": {
        "distance": 400,
        "line_linked": {
          "opacity": 1
        }
      },
      "bubble": {
        "distance": 400,
        "size": 40,
        "duration": 2,
        "opacity": 8,
        "speed": 3
      },
      "repulse": {
        "distance": 200,
        "duration": 0.4
      },
      "push": {
        "particles_nb": 4
      },
      "remove": {
        "particles_nb": 2
      }
    }
  },
  "retina_detect": true
});

</script>
</html>

