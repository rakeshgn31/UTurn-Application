<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  </head>

  <body>

    <div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">UTrun</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Options <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  	<li class="active"><a href="#">Preferences</a></li>
              		<li><a href="#">Past Trips</a></li>
             		 <li><a href="#">About Us</a></li>
             		 <li><a href="#">User Profile</a></li>
             		 <li><a href="#">Invite Friends</a></li>
             		 <li role="separator" class="divider"></li>
             		 <li><a href="#">Log Out</a></li>
                  <!-- li role="separator" class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li-->
                </ul>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="index.jsp"><i class="fa fa-arrow-circle-left fa-2x"></i></a></li>
              <li onclick="save()"><a href="#"><i class="fa fa-floppy-o fa-2x"></i></a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
         <center><img src="images/mapscreen.png" /></center>
         <br />
         <center><table style="border:0;">
         	<tbody>
         	   <tr>
         	      <td style="width:150px;"><i class="fa fa-bicycle fa-3x"></i></td><td style="width:150px;"><i class="fa fa-bus fa-3x"></i></td><td style="width:150px;"><i class="fa fa-car fa-3x"></i></td>
         	   </tr>
         	</tbody>
         </table>
         </center>
      </div>

    </div> <!-- /container -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
      function save(){
    	  alert("Map will be saved in the Past Trips");
      }
    </script>
  </body>
</html>