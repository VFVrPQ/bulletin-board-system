<%@page contentType="text/html; charset=utf-8" %>
<jsp:include page="Global/head.jsp"/>

<!-- Start of Page Container -->
<div class="page-container">
        <div class="container">
                <div class="row">

                        <!-- start of page content -->
                        <div class="span8 page-content">

                                <div id="main_listing_div"></div>

                                <div class="like-btn">

                                        <span class="tags"></span>

                                </div>

                                <section id="comments">
                                        <div id="myComments_div"></div>

                                        <div id="respond">

                                                <h3>留言</h3>

                                                <div class="cancel-comment-reply">
                                                        <a rel="nofollow" id="cancel-comment-reply-link" href="#" style="display:none;">Click here to cancel reply.</a>
                                                </div>


                                                <!--form id="commentform"-->

                                                        <div>
                                                                <label for="comment">评论</label>
                                                                <textarea class="span8" name="comment" id="comment" cols="58" rows="10"></textarea>
                                                        </div>

                                                        <p class="allowed-tags">你可以使用html语言的标签和属性 <small><code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; &lt;strike&gt; &lt;strong&gt; </code></small></p>

                                                        <div>
                                                                <input class="btn" name="submit" type="submit" id="comment_btn" onclick="commentClick()" value="提交评论">
                                                        </div>

                                                <!--/form-->

                                        </div>

                                </section><!-- end of comments -->

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
<script type='text/javascript' src='js/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='js/jflickrfeed.js'></script>
<script type='text/javascript' src='js/jquery.liveSearch.js'></script>
<script type='text/javascript' src='js/jquery.form.js'></script>
<script type='text/javascript' src='js/jquery.validate.min.js'></script>
<script type='text/javascript' src='js/custom.js'></script>
<script type='text/javascript' src='Global/global.js'></script>
<script type='text/javascript' src='js/singleNote.js'></script>
<jsp:include page="Global/footer.jsp" />