<cfoutput>
	<!doctype html>
	<html lang="en">
	  <head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>MVC Pattern Demo</title>
		<link href="/assets/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	  </head>
	  <body>
		<div class="container">
			<header class="d-flex justify-content-center py-3">
				<ul class="nav nav-pills">
				  <li class="nav-item"><a href="#event.buildLink( 'main.default' )#" class="nav-link" aria-current="page">Home</a></li>
				  <li class="nav-item"><a href="#event.buildLink( 'user.list' )#" class="nav-link">Users</a></li>
				  <li class="nav-item"><a href="#event.buildLink( 'order.list' )#" class="nav-link">Orders</a></li>
				</ul>
			  </header>

		#view()#
    </div>

    <script src="/assets/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
    </html>		
</cfoutput>