

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!doctype html>
<html lang="en">
<head>
  <title>Food Shop Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/styles.css">
<link rel="stylesheet" href="css/styles.css" type="text/css"/>

</head>
<body>
	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>
			          	<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
                                                                                    <div>
                                                                                    <form action="login" method="POST">
<!--                                                                                        username: <input type="text" name="user"><br/>
                                                                                        password: <input type="password" name="pass"><br/>
                                                                                        <input type="submit" value="Login"/><br/>-->
                                                                                    
											<h4 class="mb-4 pb-3">Log In</h4>
											<div class="form-group">
												<input type="text" name="name" placeholder="Username" class="form-style" required="">
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
                                                                                            <input type="password" name="pass" class="form-style" placeholder="Password" required="">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<input type="submit" value="Login" class="btn mt-4">
                                                                                        </form>
                                                                                </div>
<!--                                                                                        <div><a>or</a>
                                                                                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:9999/TestDemo/LoginGoogle&response_type=code
                                                                                &client_id=633898061282-5lkqa1u4c6lp5l81i2f9nm76g4ddh1qf.apps.googleusercontent.com&approval_prompt=force">Login With Google</a> 
                                                                                    </div>-->
                                                                                    <div>
                                                                          <a href="forgotPassword.jsp">Forgot password?</a>
                                                                      </div>
				      					</div>
			      					</div>
			      				</div>
								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-3 pb-3">Sign Up</h4>
                                                                                        <form action="register" method="get">
											<div class="form-group">
												<input type="text" name="user" class="form-style" placeholder="User Name" required="">
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" name ="pass" class="form-style" placeholder="Password" required="">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>	
                      <div class="form-group mt-2">
												<input type="text" name="email" class="form-style" placeholder="Email" required="">
												<i class="input-icon uil uil-at"></i>
											</div>
											<div class="form-group mt-2">
												<input type="text" name="phonenum" class="form-style" placeholder="PhoneNumber" required="">
												<i class="input-icon uil uil-phone"></i>
											</div>
                                                                                            <input type="submit" class="btn mt-4" value="Register">
                                                                                        </form>
				      					</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
</body>
</html>

