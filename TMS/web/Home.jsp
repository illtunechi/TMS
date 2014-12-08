<%-- 
    Document   : Home
    Created on : Dec 6, 2014, 7:38:49 PM
    Author     : j03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="Header.jsp" %>
<div class="container" style="background-image: url(images/PROJECTMANAGEMENTTRAINING.jpg); background-size:1170px; background-repeat: no-repeat;; background-position: center; height: 100%;">
    <div class="row">
        <dic class="col-md-4">
        </dic>
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div style="background-color: white; min-height: 420px;">
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                    alt="">
                <form class="form-signin">
                <input type="text" class="form-control" placeholder="Email" required autofocus>
                <input type="password" class="form-control" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in</button>
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="#" class="text-center new-account">Create an account </a></div>
        </div>
    </div>
</div>
<%@ include file="Footer.jsp" %>
