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

                                                <h3>Leave a Reply</h3>

                                                <div class="cancel-comment-reply">
                                                        <a rel="nofollow" id="cancel-comment-reply-link" href="#" style="display:none;">Click here to cancel reply.</a>
                                                </div>


                                                <!--form id="commentform"-->

                                                        <div>
                                                                <label for="comment">评论</label>
                                                                <textarea class="span8" name="comment" id="comment" cols="58" rows="10"></textarea>
                                                        </div>

                                                        <p class="allowed-tags">You can use these HTML tags and attributes <small><code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; &lt;strike&gt; &lt;strong&gt; </code></small></p>

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
                                                <h3 class="title">Support</h3>
                                                <p class="intro">Need more support? If you did not found an answer, contact us for further help.</p>
                                        </div>
                                </section>


                                <section class="widget">
                                        <h3 class="title">Featured Articles</h3>
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



                                <section class="widget"><h3 class="title">Categories</h3>
                                        <ul>
                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Advanced Techniques</a> </li>
                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Designing in WordPress</a></li>
                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Server &amp; Database</a></li>
                                                <li><a href="#" title="Lorem ipsum dolor sit amet, ">Theme Development</a></li>
                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">Website Dev</a></li>
                                                <li><a href="#" title="Lorem ipsum dolor sit amet,">WordPress for Beginners</a></li>
                                                <li><a href="#" title="Lorem ipsum dolor sit amet, ">WordPress Plugins</a></li>
                                        </ul>
                                </section>

                                <section class="widget">
                                        <h3 class="title">Recent Comments</h3>
                                        <ul id="recentcomments">
                                                <li class="recentcomments"><a href="#" rel="external nofollow" class="url">John Doe</a> on <a href="#">Integrating WordPress with Your Website</a></li>
                                                <li class="recentcomments">saqib sarwar on <a href="#">Integrating WordPress with Your Website</a></li>
                                                <li class="recentcomments"><a href="#" rel="external nofollow" class="url">John Doe</a> on <a href="#">Integrating WordPress with Your Website</a></li>
                                                <li class="recentcomments"><a href="#" rel="external nofollow" class="url">Mr WordPress</a> on <a href="#">Installing WordPress</a></li>
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