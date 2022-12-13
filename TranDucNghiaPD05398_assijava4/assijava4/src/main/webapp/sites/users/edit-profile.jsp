<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
    <div class="col-8 offset-2">
        <form action="" method="post">
          <div class="card">
            <div class="card-header">
              <h5>
                <p>Edit Profile</p>
                <jsp:include page="/common/inform.jsp"></jsp:include>
              </h5>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="userName" id="username" class="form-control" placeholder="Username"
                  aria-describedby="username" required>
                <small id="username" class="text-muted">Username is required</small>
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="password"
                  aria-describedby="password" required>
                <small id="password" class="text-muted">Password is required</small>
              </div>
              <div class="form-group">
                <label for="fullname">Fullname</label>
                <input type="text" name="fullName" id="fullname" class="form-control" placeholder="Fullname"
                  aria-describedby="fullname" required>
                <small id="fullname" class="text-muted">Fullname is required</small>
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" name="email" id="email" aria-describedby="email"
                  placeholder="Email">
                <small id="email" class="form-text text-muted">Email is required</small>
              </div>
            </div>
            <div class="card-footer">
              <button class="btn btn-primary">Update</button>
              <button class="btn btn-danger" type="reset">Cancle</button>
            </div>
          </div>
        </form>
      </div>