<%@ page contentType="text/html;charset=utf-8" %>
<jsp:include page="Global/head.jsp?currentMenuItem=register"></jsp:include>

                <!-- Start of Page Container -->
                <div class="page-container">
                        <div class="container">
                                <div class="row">

                                        <!-- start of page content -->
                                        <div class="span8 page-content">

                                                <article class="type-page hentry clearfix">
                                                        <h1 class="post-title">
                                                                <a href="#">注册</a>
                                                        </h1>
                                                        <hr>
                                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
                                                </article>


                                                <form id="contact-form" class="row">

                                                    <div class="span2">
                                                        <label for="userId_input">学号/工号 <span>*</span> </label>
                                                    </div>
                                                    <div class="span6">
                                                        <input type="text" id="userId_input" class="required input-xlarge" title="* 请输入用户名">
                                                    </div>

                                                    <div class="span2">
                                                        <label for="userName_input">昵称 <span>*</span> </label>
                                                    </div>
                                                    <div class="span6">
                                                        <input type="text" id="userName_input" class="required input-xlarge" title="* 请输入昵称">
                                                    </div>

                                                    <div class="span2">
                                                        <label for="userSex_input_bm">性别 <span>*</span> </label>
                                                    </div>
                                                    <div class="span6 bm30">
                                                            <input type="radio" name="userSex" id="userSex_input_bm" value="保密" checked>&nbsp;保密&nbsp;&nbsp;&nbsp;
                                                            <input type="radio" name="userSex" id="userSex_input_male" value="男">&nbsp;男&nbsp;&nbsp;&nbsp;
                                                            <input type="radio" name="userSex" id="userSex_input_female" value="女">&nbsp;女
                                                    </div>

                                                    <div class="span2">
                                                        <label for="userType_input_student">类型 <span>*</span> </label>
                                                    </div>
                                                    <div class="span6 bm30">
                                                            <input type="radio" name="userType" id="userType_input_student" value="学生" checked>&nbsp;学生&nbsp;&nbsp;&nbsp;
                                                            <input type="radio" name="userType" id="userType_input_teacher" value="老师">&nbsp;老师
                                                    </div>

                                                    <div class="span2">
                                                        <label for="userPwd_input">密码<span>*</span> </label>
                                                    </div>
                                                    <div class="span6">
                                                        <input type="password" id="userPwd_input" class="required input-xlarge" title="* 请输入密码">
                                                    </div>

                                                    <div class="span6 offset2 bm30">
                                                        <input type="submit" name="submit" value="注册" class="btn btn-inverse"  id="btn_login">
                                                        <img src="images/loading.gif" id="contact-loader" alt="Loading...">

                                                        <div class="span6 offset2 error-container"></div>
                                                        <div class="span8 offset2" id="message-sent"></div>

                                                </form>
                                        </div>
                                        <!-- end of page content -->


                                        <!-- start of sidebar -->
                                        <aside class="span4 page-sidebar">

                                                <section class="widget">
                                                        <div class="support-widget">
                                                                <h3 class="title">Support</h3>
                                                                <p class="intro">Need more support? If you did not found an answer, contact us for further help.</p>
                                                        </div>
                                                </section>

                                                <section class="widget">
                                                        <h3 class="title">Latest Articles</h3>
                                                        <ul class="articles">
                                                                <li class="article-entry standard">
                                                                        <h4><a href="single.html">Integrating WordPress with Your Website</a></h4>
                                                                        <span class="article-meta">25 Feb, 2013 in <a href="#" title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                                                                        <span class="like-count">66</span>
                                                                </li>
                                                                <li class="article-entry standard">
                                                                        <h4><a href="single.html">WordPress Site Maintenance</a></h4>
                                                                        <span class="article-meta">24 Feb, 2013 in <a href="#" title="View all posts in Website Dev">Website Dev</a></span>
                                                                        <span class="like-count">15</span>
                                                                </li>
                                                                <li class="article-entry video">
                                                                        <h4><a href="single.html">Meta Tags in WordPress</a></h4>
                                                                        <span class="article-meta">23 Feb, 2013 in <a href="#" title="View all posts in Website Dev">Website Dev</a></span>
                                                                        <span class="like-count">8</span>
                                                                </li>
                                                                <li class="article-entry image">
                                                                        <h4><a href="single.html">WordPress in Your Language</a></h4>
                                                                        <span class="article-meta">22 Feb, 2013 in <a href="#" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                                        <span class="like-count">6</span>
                                                                </li>
                                                        </ul>
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
                <script type='text/javascript' src="js/register.js"></script>
                <script type='text/javascript' src="Global/global.js"></script>

<jsp:include page="Global/footer.jsp" />
