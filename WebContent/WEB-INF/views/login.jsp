<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


	<div class="signin-container">
        <img src="<c:url value='/resource/img/ukraine_logo.gif'/>" class="login_logo col-md-8">
		<fieldset id="login_fieldset" class="forms col-md-4">

			<c:if test="${pageContext.request.userPrincipal.name == null}">

				<form:form name='loginForm' id="loginForm"
					action="${pageContext.request.contextPath}/login" method='POST'>

					<div style="color: red;">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>

					<div class="form-group">
						<label for="inputEmail">Login</label>
						<input class="form-control"
							id="login" name="login" type="text"
							placeholder="Username" size="30" autocomplete="on"
							autofocus="autofocus">

					</div>


					<div class="form-group">
						<label for="inputPassword">Password</label>
						<input
							class="form-control" id="password" name="password"
							type="password" placeholder="Password" size="30"
							autocomplete="on">
					</div>



					<div class="checkbox">
						<label><input type="checkbox" id="_spring_security_remember_me" value="true" name="_spring_security_remember_me"> Remember me</label>
					</div>
					<button type="submit" class="btn btn-primary"
						style="width: 100px; margin-left: 60px;">Login</button>
					
					
					<c:if test="${registrationMethod eq ('PERSONAL') || registrationMethod eq ('MIXED')}">
					<a href="${pageContext.request.contextPath}/register" class="btn btn-success"
						role="button" style="width: 100px;">Register</a>
					</c:if>
				</form:form>
			</c:if>
		</fieldset>
	</div>




