
<html>
	<head>
	<%@ include file = "option-add-post.jsp" %>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>#MeToo</title>
		<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/default.css">
		<link rel="stylesheet" type="text/css" href="css/login-css.css">
		<script type="text/javascript" src="js/nicEdit.js"></script>
		<script type="text/javascript">
			bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
		</script>
		<style>
				.input-hidden {
			  position: absolute;
			  left: -9999px;
			}

			input[type=radio]:checked + label>img {
			  border: 1px solid #fff;
			  box-shadow: 0 0 3px 3px #090;
			}

			/* Stuff after this is only to make things more pretty */
			input[type=radio] + label>img {
			  border: 1px dashed #444;
			  width: 150px;
			  height: 150px;
			  transition: 500ms all;
			}
		</style>
	</head>
	<body>
<div class="container">
	<div class="row">

	<div class="">

	<form action="addPost_successful.jsp" method="POST">

		<input type="radio" name="emotion" id="sad" class="input-hidden" />
		<label for="sad" style="padding: 10px;">
		<img src="img/all-post.jpg"  />
		</label>
		
		<input type="radio" name="emotion" id="happy" class="input-hidden" />  
		<label for="happy" style="padding: 10px;">
		  <img src="img/all-post.jpg" alt="I'm happy" />
		</label>

		<div class="form-group ">
			<label for="slug">Name <span class="require">*</span> </label>
			<input type="text" name="name" class="form-control" required="true"/>
		</div>

		<div class="form-group">
			<label for="title">Heading <span class="require">*</span></label>
			<input type="text" class="form-control" name="heading" required="true"/>
		</div>

		<div class="form-group">
			<label for="email">Email address:<span class="require">*</span></label>
			<input type="email" class="form-control" id="email" required="true">
		</div>
		<div class="form-group">
			<label for="title">Sub-Heading <span class="require">*</span></label>
			<input type="text" class="form-control" name="subheading" required="true"/>
		</div>    		    

		<div class="form-group">
		<label for="description">Description</label>
		<textarea rows="15" class="form-control" name="description" ></textarea>
		</div>

		<div class="form-group">
		<p><span class="require">*</span> - required fields</p>
		</div>

		<div class="form-group">
		<button type="submit" class="btn btn-primary">
		Post
		</button>
		<a class="btn btn-default" href = "index.jsp"> 
		Cancel</a>
		
		</div>

	</form>
	</div>

	</div>
</div>
	</body>
</html>
