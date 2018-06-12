<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>TTMM - Smartly Split Money</title>
    <!-- web-fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,500' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <!-- off-canvas -->
    <link href="css/mobile-menu.css" rel="stylesheet">
    <!-- font-awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">    
    <!-- Flat Icon -->
    <link href="fonts/flaticon/flaticon.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<div class="col-md-4">
			<form:form method="POST" modelAttribute="userForm"
				class="form-signin">
				<h2 class="form-signin-heading">Create your account</h2>
				<!-- <table> -->
					<!-- <tr> -->
						<!-- <td> --><spring:bind path="username">
								<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:errors path="username"></form:errors>
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-user"></i></span>
										<form:input type="text" path="username" class="form-control"
											placeholder="Username" autofocus="true" ></form:input>
									</div>
								</div>
							</spring:bind><!-- </td> -->
						<!-- <td> --><!-- </td> -->

					<!-- </tr> -->
					<!-- <tr> -->
						<!-- <td> --><spring:bind path="email">
								<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:errors path="email"></form:errors>
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-envelope"></i></span>
										<form:input type="text" path="email" class="form-control"
											placeholder="Email" autofocus="true"></form:input>
									</div>
								</div>
							</spring:bind><!-- </td> -->
						<!-- <td> --><!-- </td> -->
					<!-- </tr> -->
					<!-- <tr> -->
						<!-- <td> --><spring:bind path="phoneNumber">
								<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:errors path="phoneNumber"></form:errors>
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-earphone"></i></span>
										<form:input type="text" path="phoneNumber"
											class="form-control" placeholder="PhoneNumber"
											autofocus="true"></form:input>
									</div>
								</div>
							</spring:bind><!-- </td> -->
						<!-- <td> --><!-- </td> -->
					<!-- </tr> -->
					<!-- <tr> -->
						<!-- <td> --><spring:bind path="password">
								<div class="form-group ${status.error ? 'has-error' : ''}">
								<form:errors path="password"></form:errors><!-- </td> -->
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-lock"></i></span>
										<form:input type="password" path="password"
											class="form-control" placeholder="Password"></form:input>
									</div>
								</div>
							</spring:bind><!-- </td> -->
						<!-- <td> -->

					<!-- </tr> -->
					<!-- <tr> -->
						<!-- <td> --><spring:bind path="passwordConfirm">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-lock"></i></span>
										<form:input type="password" path="passwordConfirm"
											class="form-control" placeholder="Confirm your password"></form:input>
									</div>
								</div>
							</spring:bind><!-- </td> -->
						<!-- <td> --><form:errors path="passwordConfirm"></form:errors><!-- </td> -->
					<!-- </tr> -->
			<!-- 	</table> -->
					<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
			</form:form>
		</div>
	</div>
	<%@ include file="footer.jsp" %> 


<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
