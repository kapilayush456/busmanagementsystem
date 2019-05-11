<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Query"%>
<%@page import="Model.schedule"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
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
          
     } 
     .container
     {
        position: absolute;
        width: 100%; 
        height: 100%;
        overflow: hidden;
     }
    .btn
    {
      background-color:dodgerblue;
      color:white;
      border: none;
      cursor: pointer;
      width: 33.3%;
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
    .Add
    {
  
        margin: 150px 400px;
       
    }
    
    .submit
    {
        background-color:#0097FF;
        width:300px;
        border-radius: 15px;
        padding: 15px 7px;
    }
    .route
    {
        width:300px;
        padding: 15px 7px;
        border-radius:10px 10px 10px 10px ;
    }
    .Driver
    {
        width:300px;
      padding: 15px 7px;
      border-radius:10px 10px 10px 10px ;
    }
    .Bus
    {
        width:300px;
        padding: 15px 7px;
        border-radius:10px 10px 10px 10px ;
    }
    .pickup
    {
        width:300px;
        padding: 15px 7px;
        border-radius:10px 10px 10px 10px ;
    }
    h1{
  font-size: 30px;
  color: #ff9900;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
/*  table-layout: fixed;*/
}
.tbl-header{
  background-color: rgba(0,0,0,0.9);
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(0,0,0,0.9);
 }
.tbl-content{
 /*height:300px;*/
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(0,0,0,0.9);
}
th{
  padding: 12px 12px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #ff9900;
  text-transform: uppercase;
}
td{
  background-color: rgba(0,0,0,0.7);
  padding: 15px;
  text-align:left ;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #ff9900;
  border-bottom: solid 1px rgba(0,0,0,0.7);
}
.butn
  {
    width:20%;
    margin:auto;
    margin-left:435px;
    box-sizing:border-box;
    padding: 10px 0px;
    background-color: white;
    opacity:0.7;
    outline:none;
    border:none;
    border-bottom:1px  #ff9900;
    color:#ff9900;
    border-radius:20px;
    font-size:15px;
    height:35px;

  }
  .butn:hover
{
  background:White;
  color:#ff9900;
  cursor:pointer;
}
.demo
{
  display:flex;
      background-color: black;
      padding:20px;
            flex-wrap:wrap;
      flex-direction:row;
      justify-content: space-around;
      width:83%;
      margin-top: 50px;
     
     margin:auto;
     box-sizing: border-box;	
}
 .demo input[type=text]
    {
      margin-top:3px;
      border-radius: 20px;
      width:200px;
      height:30px;
      
          }
section{
  margin: 50px;
}


</style>
</head>
<body>
<div id="particles-js">
    <div class="container">
    <div class="main">
        <form action="management.jsp"> <button class="btn">Add Route</button></form>
        <form action="managementdel.jsp"><button class="btn" >Delete Route</button></form>
        <form action ="managementalt.jsp"><button class="btn">Edit Route</button></form>
      <div style="clear:both;"></div>
    </div>
        
        <section>
  <!--for demo wrap-->
  <h1>Driver details</h1>
  <div class="tbl-header">
    <table>
    <thead>
    <tr>      
    <th>BUS NUMBER</th>
    <th>ROUTE</th>
    </tr>
    </thead>
      <tbody>
         <% 
                    int busn;
                    String busr;
                    Configuration cf = null;
                    SessionFactory sf = null;
                    Session s = null;
                    schedule sch = null;
                    try{
                        cf = new Configuration();
                        cf.configure();
                        sf = cf.buildSessionFactory();
                        s = sf.openSession();
                        Query q = s.createQuery("from schedule");
                        Iterator it = q.iterate();
                        while (it.hasNext()){
                            
                            sch = (schedule)it.next();
                            busn = sch.getBusn();
                           busr = sch.getBusr();
                   
                            System.out.println(busn);
                            
                %>        
                
			<tr>
                            <td><%=busn%></td>
                            <td><%=busr%></td>
                           
			</tr>
                        <%
                            }
                    }catch(Exception e){
                        e.printStackTrace();
                    }  
                %>      
      </tbody>
    </table>
  </div>
</section>
           
        
    <center> <div class="Add" id="add">
            <form action="AddServlet1" method="post">
                <input type="text" placeholder="Bus Number" name="busn" class="route"><br><br>
                <input type="text" placeholder="Bus route" name="busr" class="Driver"><br><br>
                
                <button type="submit" class="submit">Submit</button>
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
