<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
    <div class="col-4 offset-4">
                <form action="" method="post">
                   <div class="card">
                    <div class="card-header">
                        <p>Login to system</p>
                        <jsp:include page="/common/inform.jsp"></jsp:include>
                    </div>
                    <div class="card-body">
                    
                        <div class="form-group">
                          <label for="username">Username</label>
                          <input type="text" name="username" id="username" class="form-control" placeholder="Username" aria-describedby="username" required>
                          <small id="username" class="text-muted">Username is required</small>
                        </div>
                        <div class="form-group">
                          <label for="password">Password</label>
                          <input type="password" name="password" id="password" class="form-control" placeholder="password" aria-describedby="password" required>
                          <small id="password" class="text-muted">Password is required</small>
                        </div>
                        <div class="form-check form-check-inline">
                            <label for=""><div class="form-check form-check-inline">
                                <input id="my-input" class="form-check-input" type="checkbox" name="remember" value="true">
                                <label for="my-input" class="form-check-label">Remenber me ?</label>
                            </div></label>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary">Login</button>
                        <button class="btn btn-danger">Cancle</button>
                    </div>
                   </div>
                </form>
            </div>