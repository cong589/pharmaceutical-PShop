<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Danh sách review</title>
    <link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/style.css">
    <script src="/assets/js/jquery-3.6.0.min.js"></script>
</head>
<body>
<!-- loader -->
<%--<div class="preloader">--%>
<%--    <div class="container">--%>
<%--        <div class="dot dot-1"></div>--%>
<%--        <div class="dot dot-2"></div>--%>
<%--        <div class="dot dot-3"></div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- loader end -->
<!-- header -->
<%@include file="header.jsp" %>
<!-- header end -->
<section class="hero-section" style="background-color: #fff8e5; background-image:url(assets/img/background.png)">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="hero-text">
                    <h1>Danh sách review</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="gap">
    <div class="container">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Tên sản phẩm</th>
                <th>Tên người dùng</th>
                <th>Hình đại diện</th>
                <th>Số sao</th>
                <th>Nội dung</th>
                <th>Ngày tạo</th>
                <th>Ngày cập nhật</th>
                <th>Hành động</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="review" items="${reviewList}">
                <tr>
                    <td>${review.reviewId}</td>
                    <td>${review.productName}</td>
                    <td>${review.name}</td>
                    <td><img src="${review.avatar}" alt="${review.name}" style="width: 50px; height: 50px;"></td>
                    <td>${review.starQuantity}</td>
                    <td>${review.content}</td>
                    <td><fmt:formatDate value="${review.createdDate}" pattern="dd-MM-yyyy HH:mm:ss"/></td>
                    <td><fmt:formatDate value="${review.updatedDate}" pattern="dd-MM-yyyy HH:mm:ss"/></td>
                    <td>
                        <a href="/editReview?reviewID=${review.reviewId}&productID=${review.productId}" class="btn btn-primary">Chỉnh sửa</a>
                        <a href="/deleteReview?reviewId=${review.reviewId}&productId=${review.productId}" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa không?')">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
<footer style="background-color: #fff8e5; background-image:url(assets/img/background.png)">
    <div class="container">
        <div class="row">
            <div class="col-xl-4 col-lg-6">
                <div class="logo">
                    <a href="index-2.html">
                        <img src="assets/img/logo.png" alt="logo">
                    </a>
                    <p>At vero eos et accusam justo duo dolo res et ea rebum. Stet clita kasd guber gren. Aenean sollici tudin lorem qsben elit clita.</p>
                    <div class="phone">
                        <i>
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
                            <path d="M0,81v350h512V81H0z M456.952,111L256,286.104L55.047,111H456.952z M30,128.967l134.031,116.789L30,379.787V128.967z
                               M51.213,401l135.489-135.489L256,325.896l69.298-60.384L460.787,401H51.213z M482,379.788L347.969,245.756L482,128.967V379.788z"></path>
                            </svg>
                        </i><a href="mailto:username@domain.com">username@domain.com</a>
                    </div>
                    <div class="phone d-flax align-items-center">
                        <i>
                            <svg version="1.1" xml:space="preserve" width="682.66669" height="682.66669" viewBox="0 0 682.66669 682.66669" xmlns="http://www.w3.org/1999/xlink"><clipPath clipPathUnits="userSpaceOnUse"><path d="M 0,512 H 512 V 0 H 0 Z"></path></clipPath><g transform="matrix(1.3333333,0,0,-1.3333333,0,682.66667)"><g><g clip-path="url(#clipPath2333)"><g transform="translate(256,92)"><path d="m 0,0 c -126.964,143.662 -160,165.23 -160,240 0,88.366 71.634,160 160,160 88.365,0 160,-71.634 160,-160 C 160,165.854 130.212,147.337 0,0 Z" style="fill:none;stroke:#000;stroke-width:40;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"></path></g><g transform="translate(316,372)"><path d="m 0,0 -80,-80 -40,40" style="fill:none;stroke:#000;stroke-width:40;stroke-linecap:square;stroke-linejoin:miter;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"></path></g></g></g></g>
                              </svg>
                        </i>
                        <p>Eighth Avenue 487, New York</p>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6">
                <div class="widget-title">
                    <h3>Quick Links</h3>
                    <div class="boder"></div>
                    <ul>
                        <li><i class="fa-solid fa-angle-right"></i><a href="javascript:void(0)">Dog Boarding Services</a></li>
                        <li><i class="fa-solid fa-angle-right"></i><a href="javascript:void(0)">Cat Boarding Services</a></li>
                        <li><i class="fa-solid fa-angle-right"></i><a href="javascript:void(0)">Spa and Grooming Services</a></li>
                        <li><i class="fa-solid fa-angle-right"></i><a href="javascript:void(0)">Care for Puppy</a></li>
                        <li><i class="fa-solid fa-angle-right"></i><a href="javascript:void(0)">Service at a Resort</a></li>
                        <li><i class="fa-solid fa-angle-right"></i><a href="javascript:void(0)">Veterinary Service</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6">
                <div class="working-hours">
                    <div class="widget-title">
                        <h3>working hours</h3>
                        <div class="boder"></div>
                        <div class="working-time">
                            <h6 class="pt-0">Monday - Saturday <span>08AM - 10PM</span></h6>
                            <h6>Sunday<span>08AM - 10PM</span></h6>
                            <div class="call-us">
                                <img src="assets/img/hadphon.png" alt="hadphon">
                                <div>
                                    <a href="#">+021 01283492</a>
                                    <span>Got Questions? Call us 24/7</span>
                                </div>
                            </div>
                            <ul class="social-icon">
                                <li><a href="#"><i class="fa-brands fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <p>Patte Pet Care - Copyright 2023. Design by Winsfolio</p>
            <a href="#"><img src="assets/img/visa.jpg" alt="cad"></a>
        </div>
    </div>
    <img src="assets/img/hero-shaps-1.png" alt="hero-shaps" class="img-2">
    <img src="assets/img/dabal-foot-1.png" alt="hero-shaps" class="img-3">
    <img src="assets/img/hero-shaps-1.png" alt="hero-shaps" class="img-4">
</footer>
<!-- cart-popup -->
<%@ include file="cartPopup.jsp"%>
<!-- cart-popup end -->
<!-- search-popup -->
<%@ include file="searchPopup.jsp"%>
<!-- search-popup end -->
<!-- progress -->
<div id="progress">
    <span id="progress-value"><i class="fa-solid fa-up-long"></i></span>
</div>
<!-- progress end -->
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/slick.min.js"></script>
<!-- fancybox -->
<script src="assets/js/jquery.fancybox.min.js"></script>
<script src="assets/js/custom.js"></script>
</body>
</html>