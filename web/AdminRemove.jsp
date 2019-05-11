<%-- 
    Document   : admin
    Created on : Mar 30, 2019, 8:16:54 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
         background-image: url("image1.jpg"); 
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
                border-radius: 15px ;
                width: 300px;
            }
            .pwd
            {
                padding: 12px 5px;
                width: 300px;
            }
            .select
            {
                 padding: 12px 5px;
                 border-radius: 15px;
                 width: 315px;
            }
            .form
            {
                position: absolute;
                border-radius: 25px;
                text-align: center;
                margin:200px 500px;
                box-sizing: border-box;
            }
            .container
            {
                position: absolute;
               width: 100%; 
               height: 100%;
            }
            .register
            {
                padding: 12px 5px;
                border-radius: 15px;
                width: 315px;
                background-color:#0097FF;
                text-align: center;
                font-size: 15px;
                display: inline-block;
                font-stretch: ultra-expanded;
            }
            
            .btn
            {
            background-color:dodgerblue;
            color:white;
            border: none;
            cursor: pointer;
            width: 20%;
            float: left;
            padding: 12px 24px;
            }
            .btn:hover
            {
            background-color:powderblue;
            }
            .btn:active
            {
            background-color: #E6E6E6;
            }
</style>
</head>
<body>
<div id="particles-js">
    
     
    <div class="container">
        <div class="main">
        <form action="AdminReg.jsp"> <button class="btn">Register</button></form> 
        <form action="AdminRemove.jsp"> <button class="btn">Remove User</button></form> 
        <form action="AdminAdd.jsp"> <button class="btn">Add Route</button></form>
        <form action="AdminDel.jsp"><button class="btn" >Delete Route</button></form>
        <form action ="AdminEdit.jsp"><button class="btn">Edit Route</button></form>
      <div style="clear:both;"></div>
     </div>
     <center>
     <div class="form" action="DeleteUser" method="post">
        <form>
            <input type="text" name="username" placeholder="Username" class="name"><br><br>
                
            <input type="submit" value="Remove" class="register">
            </form>
        </div>
    </center>
    </div>
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
    
</html>
