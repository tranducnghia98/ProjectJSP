<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
    <div class="col-8 offset-2">
                <form action="" method="post">
                   <div class="card">
                    <div class="card-header">
                       <h5> <p>Registration</p></h5>
                       
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                          <label for="username">Username</label>
                          <input type="text" name="username" id="username" class="form-control" placeholder="Username" aria-describedby="username" required>
                          <small id="username" class="text-muted">Username is required</small>
                        </div>
                        <div class="form-group">
                          <label for="password">Password</label>
                          <input type="password" name="password" id="password" class="form-control" placeholder="Password" aria-describedby="password" required>
                          <small id="password" class="text-muted">Password is required</small>
                        </div>
                        <div class="form-group">
                            <label for="password">Current Password</label>
                            <input type="password" name="currentpassword" id="currentpassword" class="form-control" placeholder="Current password" aria-describedby="password" required>
                            <small id="currentpassword" class="text-muted">Password is required</small>
                          </div>
                          <div class="form-group">
                            <label for="password">Confirm Password</label>
                            <input type="password" name="confirmpassword" id="confirmpassword" class="form-control" placeholder="Confirm Password" aria-describedby="password" required>
                            <small id="confirmpassword" class="text-muted">Confirm Password is required</small>
                          </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary" type="submit">Change Password</button>
                        <button class="btn btn-danger" type="reset">Cancle</button>
                    </div>
                   </div>
                </form>
            </div>