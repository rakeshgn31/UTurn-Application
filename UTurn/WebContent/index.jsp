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
                  	<li class="active"><a href="UnderConstruction.jsp">Preferences</a></li>
              		<li><a href="UnderConstruction.jsp">Past Trips</a></li>
             		 <li><a href="UnderConstruction.jsp">About Us</a></li>
             		 <li><a href="UnderConstruction.jsp">User Profile</a></li>
             		 <li><a href="UnderConstruction.jsp">Invite Friends</a></li>
             		 <li role="separator" class="divider"></li>
             		 <li><a href="#">Log Out</a></li>
                  <!-- li role="separator" class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li-->
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
			<table class="table" border="0" id="table_location">
				<tbody>
					<tr>
						<td><label class="radio-inline"><input type="radio" name="optradio" value="oneway" checked >&nbsp;&nbsp;&nbsp;&nbsp;<b><i>One Way</i></b></label>
						<label class="radio-inline"><input type="radio" name="optradio" value="round">&nbsp;&nbsp;&nbsp;&nbsp<b><i>Round Trip</i></b></label></td>
					</tr>
					<tr>
					 <td style="width:25%;">Starting Location</td>
					 <td style="width:75%;"><input type="text" placeholder="Type the Starting Point" style="width:250px;"/></td>
					</tr>
					<tr>
					 <td style="width:25%;" id="label_end_loc">End Location</td>
					 <td style="width:75%;"><input type="text" placeholder="Type the middle/destination Point" style="width:250px;"/>&nbsp;&nbsp;<span id="plus" style="cursor:pointer;"><i class="fa fa-plus-circle"></i></span></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="jumbotron">
		<button type="button" class="btn btn-primary" onclick="proceed()" id="proceed">Proceed</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-primary">Clear</button>
		</div>

    </div> <!-- /container -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
    var rowCount = 1;
    $("#plus").click(function(){
        $('#table_location tr:last').after('<tr id="'+rowCount+'"><td style="width:25%;">Location</td><td style="width:75%;"><input type="text" placeholder="Type the middle/destination Point" style="width:250px;"/>&nbsp;&nbsp;<span onclick="minus('+rowCount+')" style="cursor:pointer;"><i class="fa fa-minus-circle"></i></span></td></tr>');
        rowCount++;
        //$("#table_location").append('<tr><td style="width:25%;">Location</td></tr><td style="width:75%;"><input type="text" placeholder="Type the middle/destination Point" style="width:250px;"/>&nbsp;&nbsp;<span id="plus" style="cursor:pointer;"><i class="fa fa-plus-circle"></i></span></td></tr>');
    });
    
    function minus(count){
    	//alert("Clicked");
    	$('#'+count).remove();
    }
    
    function proceed(){
    	window.location = "map.jsp";
    }
    
    
    function radioSelect(){
    	var selectedVal = "";
    	var selected = $("input[type='radio'][name='optradio']:checked");
    	/*if (selected.length > 0) {
    	    selectedVal = selected.attr();
    	}*/
		alert(selected);
    }
    
    $('input:radio[name=optradio]').click(function() {
    	  var val = $('input:radio[name=optradio]:checked').val();
    	  if(val == 'round'){
    		  $('#label_end_loc').text("Location");
    	  }else if(val == 'oneway'){
    		  $('#label_end_loc').text("End Location");
    	  }
    	});
    </script>
  </body>
</html>