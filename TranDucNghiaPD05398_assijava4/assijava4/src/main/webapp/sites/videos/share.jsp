<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<form action="ShareVideo" method="post">
<input type="hidden" name="videoId" value="${videoId }">
	<div class="card">
		<div class="card-header">
			<h1>Send Video to your friend</h1>
		</div>
		<div class="card-body">
			<h5 class="card-title">Your friend Email</h5>
			<input class="input-group" type="text" name="email">
		</div>
		<div class="card-footer">
			<button class="btn btn-success" >Send</button>
		</div>
	</div>
</form>

