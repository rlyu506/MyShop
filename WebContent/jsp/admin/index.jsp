<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html>
    <head>
        <title>management center</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
       <link href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" type="text/css" />
    </head>
    <body>
		<div class="wrapper">
			<h1>Welcome to Admin Page</h1>
			<h2>Username and Password: <span>admin</span></h2>
			<div class="content">
		<form method="post" action="${pageContext.request.contextPath }/adminLogin"
		target="_parent" >
			<div id="form_wrapper" class="form_wrapper">
						<h3>Login</h3>
						<div>
							<label>Username:</label>
							<input type="text" name="username"/>
							<span class="error">This is an error</span>
						</div>
						<div>
							<label>Password:</label>
							<input type="password" name="password"/>
							<span class="error">This is an error</span>
						</div>
						<div class="bottom">		
					<input type="submit" value="Login" class="button" />	
		           <input type="hidden" name="act" value="signin" />
	        	</div>
				<div class="clear"></div>
						</div>
					</form>
				</div>
				<div class="clear"></div>
			</div>
		
    </body>
   </html> 
