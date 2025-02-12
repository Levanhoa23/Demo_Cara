<%-- 
    Document   : header
    Created on : Sep 25, 2024, 9:42:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<header id="header">
    <a href="index.html"><img src="./assets/img/logo.png" class="logo" alt=""></a>
    <ul id="navbar">
        <li><a class="active" href="HomeServlet">Home</a></li>
        <li>
            <a href="shop.html">Shop</a>
            <ul class="sub-menu">
                <c:forEach var="category" items="${categoryList}">
                    <li class="menu-item">
                        <a href="">${category.name}</a>
                    </li>
                </c:forEach>
            </ul>
        </li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="contact.html">Contact</a></li>
        <li><a href="cart.html"><i class="fa-solid fa-bag-shopping"></i></a></li>
        <li><a href="user.html"><i class="fa-solid fa-user"></i></a></li>
        <li>
            <c:if test="${sessionScope.user == null}">
            <a href="LoginServlet">Login</a> 
            </c:if>
            <c:if test="${sessionScope.user != null}">
            <a href="LogoutServlet">Logout</a>
            </c:if>
        </li>
    </ul>
</header>
