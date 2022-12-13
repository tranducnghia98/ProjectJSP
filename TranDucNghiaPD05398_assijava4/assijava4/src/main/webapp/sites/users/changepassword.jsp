<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
    <div class="col-8 offset-2">
                <form action="ChangePassword" method="post">
                   <div class="card">
                    <div class="card-header">
                       <h5> <p>ChangePassword</p></h5>
                       <jsp:include page="/common/inform.jsp"></jsp:include>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                          <label for="username">Username</label>
                          <input type="text" value="${userName }" name="username" id="username" class="form-control" placeholder="Username" aria-describedby="username" required>
                          <small id="username" class="text-muted">Username is required</small>
                        </div>
                        <div class="form-group">
                          <label for="password">Current Password</label>
                            <input type="password" name="currenPassword" id="currentpassword" class="form-control" placeholder="Current password" aria-describedby="password" required>
                            <small id="currentpassword" class="text-muted">Password is required</small>
                        </div>
                        <div class="form-group">
                            <label for="password">New Password</label>
                          <input type="password" name="password" id="password" class="form-control" placeholder="Password" aria-describedby="password" required>
                          <small id="password" class="text-muted">Password is required</small>
                          </div>
                          <div class="form-group">
                            <label for="password">Confirm Password</label>
                            <input type="password" name="confirmPassword" id="confirmpassword" class="form-control" placeholder="Confirm Password" aria-describedby="password" required>
                            <small id="confirmpassword" class="text-muted">Confirm Password is required</small>
                          </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary" >Change Password</button>
                        <button class="btn btn-danger">Cancle</button>
                    </div>
                   </div>
                </form>
            </div>