<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="col mt-4">
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item"><a class="nav-link active"
			id="videoEditing-tab" data-toggle="tab" href="#videoEditing"
			role="tab" aria-controls="videoEditing" aria-selected="true">User
				Editting</a></li>
		<li class="nav-item"><a class="nav-link" id="videolist-tab"
			data-toggle="tab" href="#videolist" role="tab"
			aria-controls="videolist" aria-selected="false">User List</a></li>

	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="videoEditing"
			role="tabpanel" aria-labelledby="home-tab">
			<form action="" method="post">
				<div class="card">
				
					<div class="card-body">
						<div class="form-group">
							<label for="username">Username</label> <input value="${USER.userName }" type="text"
								name="userName" id="username" class="form-control"
								placeholder="Username" aria-describedby="username" required>
							<small id="username" class="text-muted">Username is
								required</small>
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input value="${USER.password }" type="password"
								name="password" id="password" class="form-control"
								placeholder="password" aria-describedby="password" required>
							<small id="password" class="text-muted">Password is
								required</small>
						</div>
						<div class="form-group">
							<label for="fullname">Fullname</label> <input value="${USER.fullName }" type="text"
								name="fullName" id="fullname" class="form-control"
								placeholder="Fullname" aria-describedby="fullname" required>
							<small id="fullname" class="text-muted">Fullname is
								required</small>
						</div>
						<div class="form-group">
							<label for="email">Email</label> <input value="${USER.email }" type="email"
								class="form-control" name="email" id="email"
								aria-describedby="email" placeholder="Email"> <small
								id="email" class="form-text text-muted">Email is
								required</small>
						</div>
					</div>

					<div class="card-footer text-muted">
						<button formaction="UserServlet/insert" type="submit"
				class="btn btn-primary">Insert</button>


			<button formaction="UserServlet/update" type="submit"
				class="btn btn-primary">Update</button>
			<button formaction="UserServlet/delete" 
				class="btn btn-primary">Delete</button>
			<button formaction="UserServlet/reset"
				class="btn btn-primary">Reset</button>

					</div>
						</form>
				</div>
		
		</div>
		<div class="tab-pane fade" id="videolist" role="tabpanel"
			aria-labelledby="profile-tab">
			<table class="table table-strip">
				<tr>
					<td>User name</td>
					<td>Full name</td>
					<td>Email</td>
					<td>Role</td>
					<td>&nbsp;</td>
				</tr>
				<c:forEach var="item" items="${user}">
				<tr>
					<td>${item.userName }</td>
					<td>${item.fullName }</td>
					<td>${item.email }</td>
					<td>${item.admin ? 'admin':'user' }</td>
					<td><a href="UserServlet/edit?userName=${item.userName }"><i class="fa fa-edit" aria-hidden="true"></i>
							Edit</a>
							 <a href="UserServlet/delete?userName=${item.userName }"><i class="fa fa-remove" aria-hidden="true"></i>
							Delete</a></td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>


