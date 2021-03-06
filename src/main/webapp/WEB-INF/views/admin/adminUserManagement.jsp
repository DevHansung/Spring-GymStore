<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="container-wrapper">
	<div class="container">
		<h2>Add Page</h2>
		<p class="lead">Fill the below information to add a product</p>

		<sf:form
			action="${pageContext.request.contextPath}/admin/adminUserList/adminUserManagement?${_csrf.parameterName}=${_csrf.token}"
			method="post" modelAttribute="user">

			<sf:hidden path="userId" />
			
			<div class="form-group">
				<label for="category">authority: </label>
				<sf:radiobutton path="authority" id="authority" value="ROLE_ADMIN" />
				관리자
				<sf:radiobutton path="authority" id="authority" value="ROLE_USER" />
				일반유저
			</div>

			<div class="form-group">
				<label for="category">enabled: </label>
				<sf:radiobutton path="enabled" id="enabled" value="1" />
				활성화
				<sf:radiobutton path="enabled" id="enabled" value="0" />
				비활성화
			</div>

			<input type="submit" value="submit" class="btn btn-default">
			<a href="<c:url value="/admin/adminUserList"/>"
				class="btn btn-default">Cancel</a>

		</sf:form>
		<br />
	</div>
</div>



