<?php 
    
    include "connection.php";
    include "navbaradmin.php";
?>

<!DOCTYPE html>
<html>
<head>
    <title>
        Welcome to Library
    </title>

<link rel="stylesheet" type="text/css" href="style.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <style type="text/css">
      section
      {
        margin-top: -22px;
      }
    </style> 
</head>

 <body>
      

      <section style="height:600px ; background-image:url(images/bgilogin.png);">
        <div class="reg_img">

            <div class="box3">
                
                <br>
                <h1 style="color:lightblue; text-align: center; font-size: 25px;">User Registration Form</h1><br>
              <form name="Registration" action="" method="post">

                  <div class="form" >
                  <input class="form-control"    type="text" name="first" placeholder="First Name" required=""><br>
                  <input class="form-control"    type="text" name="last" placeholder="Last Name" required=""><br>
                  <input class="form-control"    type="text" name="id" placeholder="Admin ID" required=""><br>
                  <input class="form-control"    type="text" name="adminname" placeholder="adminname" required=""><br>
                  <input class="form-control"    type="tel" name="Phone" placeholder="phone" required=""><br>
                  <input class="form-control"    type="text" name="email" placeholder="Email" required=""><br> 
                  <input class="form-control"    type="password" name="password" placeholder="Password" required=""> <br>
                  <input class="btn btn-default" type="submit" name="submit" value="Sign Up" style="color: black; width: 70px; height: 30px"> </div>
              </form>
             
            </div>
          </div>
        </section> 

      <!-- saving user info to the server and checking if duplicate username-->

        <?php

        

if(isset($_POST['submit']))
{
  $count=0;
  $sql="SELECT adminname from `admin`";
  $res=mysqli_query($db,$sql);

  while($row=mysqli_fetch_assoc($res))
  {
    if($row['adminname']==$_POST['adminname'])
    {
      $count=$count+1;
    }
  }
  if($count==0)
  {
    mysqli_query($db,"INSERT INTO `admin` VALUES('$_POST[first]', '$_POST[last]', '$_POST[id]', '$_POST[adminname]', '$_POST[phone]', '$_POST[email]', '$_POST[password]');");
  ?>
    <script type="text/javascript">
     alert("Registration successful");
    </script>
  <?php
  }
  else
  {

    ?>
      <script type="text/javascript">
        alert("This name already exist.");
      </script>
    <?php

  }

}

?>




        <footer style="height: 120px;">
            <p1>Shakil khan <br>ID:42220100067 <br>📧Shakilkhanfv@gmail.com <br>📞01640532045 <br> </p1>

            <a  style="color: burlywood;" href="https://www.facebook.com/shakil2045/" >Facebook🆔</a>
     
   </footer>
  </body>
  </html>