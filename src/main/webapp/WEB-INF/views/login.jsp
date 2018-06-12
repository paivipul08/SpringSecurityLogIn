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
 <%@ include file="header.jsp" %> 

<div class="container">
	 <form method="POST" action="${contextPath}/login" class="form-signin">
         	 <div class="form-group ${error != null ? 'has-error' : ''}">
      	           <div class="col-md-4">
      	          
      	           <h2 class="form-heading" >Log in</h2>
	           				<div style="margin-bottom: 25px" class="input-group">
	                         	  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	            						<input name="username" type="text" class="form-control" placeholder="Username" autofocus="true"/>
	                   		</div>
	           		   <div style="margin-bottom: 25px" class="input-group">
	                           <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
	           						 <input name="password" type="password" class="form-control" placeholder="Password"/>
	           		  </div>
	             		<button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
	                    <!--   <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>-->
	                    <h4>&nbsp</h4>
	                     <c:if test="${message != null}">
	                     <div class="alert alert-success">
	             			<span>${message}</span>
	             		</div>
	             		</c:if>
	             		<c:if test="${error != null}">
	             		  <div class="alert alert-danger">
	            		 <span>${error}</span>
	            		   </div>
	            		 </c:if>
            	</div>
            
          		  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          		   </div>
    </form>
</div>
<%@ include file="footer.jsp" %> 


<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
