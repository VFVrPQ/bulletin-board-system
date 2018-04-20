<%--
  Created by IntelliJ IDEA.
  User: chaojielyu
  Date: 2018/4/20
  Time: 下午7:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
<head>
    <!-- META TAGS -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Knowledge Base Theme</title>

    <link rel="shortcut icon" href="images/favicon.png" />




    <!-- Style Sheet-->
    <link rel="stylesheet" href="style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css'  href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='responsive-css-css'  href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='pretty-photo-css-css'  href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
    <link rel='stylesheet' id='main-css-css'  href='css/main5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='custom-css-css'  href='css/custom5152.html?ver=1.0' type='text/css' media='all' />


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="js/html5.js"></script></script>
    <![endif]-->


</head>

<body>

<!-- Start of Header -->
<div class="header-wrapper">
    <header>
        <div class="container">


            <div class="logo-container">
                <!-- Website Logo -->
                <a href="index-2.html"  title="Knowledge Base Theme">
                    <img src="images/logo.png" alt="Knowledge Base Theme">
                </a>
                <span class="tag-line">Premium WordPress Theme</span>
            </div>


            <!-- Start of Main Navigation -->
            <nav class="main-nav">
                <div class="menu-top-menu-container">
                    <ul id="menu-top-menu" class="clearfix">
                        <li  class="current-menu-item"><a href="noteList.jsp">首页</a></li>

                        <li><a href="register.jsp">注册</a></li>
                        <li>
                            <div id="login_li"></div>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- End of Main Navigation -->

        </div>
    </header>
</div>
<!-- End of Header -->

<!-- Start of Search Wrapper -->
<div class="search-area-wrapper">
    <div class="search-area container">
        <h3 class="search-header">Have a Question?</h3>
        <p class="search-tag-line">If you have any question you can ask below or enter what you are looking for!</p>

        <form id="search-form" class="search-form clearfix" method="get" action="noteList.jsp" autocomplete="off">
            <input class="search-term required" type="text" id="search_term" name="s" placeholder="请输入搜索词（帖子名，内容）" title="* 请输入搜索词!" />
            <input class="search-btn" type="submit" value="Search" />
            <div id="search-error-container"></div>
        </form>
    </div>
</div>
<!-- End of Search Wrapper -->

<script type="text/javascript" src='../js/head.js' defer="true"></script>
<script type='text/javascript' src='../js/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='../js/jquery.easing.1.34e44.js?ver=1.3'></script>
<script type='text/javascript' src='../js/prettyphoto/jquery.prettyPhotoaeb9.js?ver=3.1.4'></script>
<script type='text/javascript' src='../js/jquery.liveSearchd5f7.js?ver=2.0'></script>
<script type='text/javascript' src='../js/jflickrfeed.js'></script>
<script type='text/javascript' src='../js/jquery.formd471.js?ver=3.18'></script>
<script type='text/javascript' src='../js/jquery.validate.minfc6b.js?ver=1.10.0'></script>
<script type='text/javascript' src='../js/custom5152.js?ver=1.0'></script>
<script type='text/javascript' src="../Global/global.js"></script>