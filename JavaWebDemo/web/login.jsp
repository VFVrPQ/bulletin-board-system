<%@ page contentType="text/html;charset=utf-8"%>
<%@ page session="true" %>
<jsp:include page="/Global/head.jsp?currentMenuItem=login" />

                <!-- Start of Page Container -->
                <div class="page-container">
                        <div class="container">
                                <div class="row">

                                        <!-- start of page content -->
                                        <div class="span8 page-content">

                                                <article class="type-page hentry clearfix">
                                                        <h1 class="post-title">
                                                                <a href="#">登录</a>
                                                        </h1>
                                                        <hr>
                                                        <p>请填写学号和密码。</p>
                                                </article>


                                                <div id="contact-form" class="row">

                                                        <div class="span2">
                                                                <label for="userId_input">学号/工号 <span>*</span> </label>
                                                        </div>
                                                        <div class="span6">
                                                                <input type="text" id="userId_input" class="required input-xlarge" title="* 请输入用户名">
                                                        </div>

                                                        <div class="span2">
                                                                <label for="userPwd_input">密码<span>*</span> </label>
                                                        </div>
                                                        <div class="span6">
                                                                <input type="password" id="userPwd_input" class="required input-xlarge" title="* 请输入密码">
                                                        </div>

                                                        <div class="span6 offset2 bm30">
                                                                <input type="submit" name="submit" value="登录" class="btn btn-inverse"  id="btn_login">
                                                                <img src="images/loading.gif" id="contact-loader" alt="Loading...">
                                                        </div>

                                                        <div class="span6 offset2 error-container"></div>
                                                        <div class="span8 offset2" id="message-sent"></div>

                                                </div>
                                        </div>
                                        <!-- end of page content -->


                                        <!-- start of sidebar -->
                                        <aside class="span4 page-sidebar">

                                                <section class="widget">
                                                        <div class="support-widget">
                                                                <h3 class="title">帮助</h3>
                                                                <p class="intro">需要帮助吗？请联系我们<a href="mailto:admin@vfvrpq.cn">admin@vfvrpq.cn</a></p>
                                                        </div>
                                                </section>

                                        </aside>
                                        <!-- end of sidebar -->
                                </div>
                        </div>
                </div>
                <!-- End of Page Container -->



                <!-- script -->
                <script type='text/javascript' src='js/jquery-1.8.3.min.js'></script>
                <script type='text/javascript' src='js/jquery.easing.1.34e44.js?ver=1.3'></script>
                <script type='text/javascript' src='js/prettyphoto/jquery.prettyPhotoaeb9.js?ver=3.1.4'></script>
                <script type='text/javascript' src='js/jquery.liveSearchd5f7.js?ver=2.0'></script>
				<script type='text/javascript' src='js/jflickrfeed.js'></script>
                <script type='text/javascript' src='js/jquery.formd471.js?ver=3.18'></script>
                <script type='text/javascript' src='js/jquery.validate.minfc6b.js?ver=1.10.0'></script>
                <script type='text/javascript' src='js/custom5152.js?ver=1.0'></script>
                <script type='text/javascript' src="js/login.js"></script>
                <script type='text/javascript' src="Global/global.js"></script>

<jsp:include page="/Global/footer.jsp" />