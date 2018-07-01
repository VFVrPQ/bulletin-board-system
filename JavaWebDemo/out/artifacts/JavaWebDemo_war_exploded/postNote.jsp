<!-- 发帖 -->
<%@page contentType="text/html; charset=utf-8" %>
<jsp:include page="Global/head.jsp?currentMenuItem=postNote" />

                <!-- Start of Page Container -->
                <div class="page-container">
                        <div class="container">
                                <div class="row">

                                        <!-- start of page content -->
                                        <div class="span8 page-content">

                                                <article class="type-page hentry clearfix">
                                                        <h1 class="post-title">
                                                                <a href="#">发帖</a>
                                                        </h1>
                                                        <hr>
                                                        <!--p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p-->
                                                </article>


                                                <div id="contact-form" class="row">

                                                        <div class="span2">
                                                                <label for="noteName_input">标题<span>*</span> </label>
                                                        </div>
                                                        <div class="span6">
                                                                <input type="text" name="noteName" id="noteName_input" class="required input-xlarge" value="" title="* 请输入标题">
                                                        </div>

                                                        <div class="span2">
                                                                <label for="content_input">内容<span>*</span> </label>
                                                        </div>
                                                        <div class="span6">
                                                                <textarea name="content" id="content_input" class="required span6" rows="6" title="* 请输入内容"></textarea>
                                                        </div>

                                                        <div class="span6 offset2 bm30">
                                                                <input type="submit" name="submit" value="发帖" class="btn btn-inverse"  id="btn_post">
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
                <script type="text/javascript" src="js/postNote.js"></script>
                <script type='text/javascript' src="Global/global.js"></script>

<jsp:include page="Global/footer.jsp"></jsp:include>