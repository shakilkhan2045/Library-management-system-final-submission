<?php
  session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <title>
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

      
      <header>
      
        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
              <div class="navbar-header">
                <a  style="color: blanchedalmond;" class="navbar-brand active"></a>
              </div>
              <ul class="nav navbar-nav">
                <li><a href="index.php">HOME</a></li>
                <?php
            if(isset($_SESSION['login_admin']))
            {
              ?>
                <li><a href="books.php">BOOKS</a></li>
                <li><a href="feedback.php">FEEDBACK</a></li>
                <li><a href="add.php">Books Management</a></li>
              
          

                  <li><a href="student.php">

                    STUDENT-INFORMATION


                 </a></li>
                </ul>
            </ul>
                <ul class="nav navbar-nav navbar-right">
                  
                  <li><a href="">
                    <div style="color: white">
                      <?php
                        echo "logged as : ".$_SESSION['login_admin']; 
                      ?>
                    </div>
                  </a></li>
                  <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"> LOGOUT</span></a></li>
                </ul>
              <?php
            }
            else
            {  
               ?>
              <ul class="nav navbar-nav navbar-right">
             
    
                <li><a href="adminlogin.php"><span class="glyphicon glyphicon-log-in"> LOGIN</span></a></li>
                <li><a href="registration.php"><span class="glyphicon glyphicon-user"> SIGN UP</span></a></li>
              </ul>
              <?php
            }
                ?>
          </div>
        </nav>
     </header>