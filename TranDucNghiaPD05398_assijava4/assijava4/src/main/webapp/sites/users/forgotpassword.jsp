<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
    <div class="col-8 offset-2">
                <form action="Forgotpassword" method="post">
                   <div class="card">
                    <div class="card-header">
                        <h4><p>Forgot Password</p></h4>
                        <jsp:include page="/common/inform.jsp"></jsp:include>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                          <label for="username">Username</label>
                          <input type="text" name="username" id="username" class="form-control" placeholder="Username" aria-describedby="username" required>
                          <small id="username" class="text-muted">Username is required</small>
                        </div>
                        <div class="form-group">
                          <label for="email">Email</label>
                          <input type="email" class="form-control" name="email" id="email" aria-describedby="email" placeholder="Email" required>
                          <small id="email" class="form-text text-muted">Email is required</small>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary" >Send</button>
                        <button class="btn btn-danger">Cancle</button>
                    </div>
                   </div>
                </form>
            </div>