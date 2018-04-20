<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<jsp:include page="Global/head.jsp"/>

<!-- Start of Page Container -->
<div class="page-container">
        <div class="container">
                <div class="row">

                        <!-- start of page content -->
                        <div class="span8 main-listing">
                            <div id="main_listing_div"></div>
                            <div id="pagination">
                                <a href="#" class="btn" onclick="paginationPre()" id="pagination_pre_btn">Pre <<</a>
                                <a href="#" class="btn" onclick="paginationNext()" id="pagination_next_btn">Next >></a>
                            </div>
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
                                                        <h4><a href="noteList.jsp">Integrating WordPress with Your Website</a></h4>
                                                        <span class="article-meta">25 Feb, 2013 in <a href="#" title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                                                        <span class="like-count">66</span>
                                                </li>
                                                <li class="article-entry standard">
                                                        <h4><a href="noteList.jsp">WordPress Site Maintenance</a></h4>
                                                        <span class="article-meta">24 Feb, 2013 in <a href="#" title="View all posts in Website Dev">Website Dev</a></span>
                                                        <span class="like-count">15</span>
                                                </li>
                                                <li class="article-entry video">
                                                        <h4><a href="noteList.jsp">Meta Tags in WordPress</a></h4>
                                                        <span class="article-meta">23 Feb, 2013 in <a href="#" title="View all posts in Website Dev">Website Dev</a></span>
                                                        <span class="like-count">8</span>
                                                </li>
                                                <li class="article-entry image">
                                                        <h4><a href="noteList.jsp">WordPress in Your Language</a></h4>
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
<script type="text/javascript" src="Global/global.js"></script>
<script type="text/javascript" src='js/noteList.js'></script>

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
<jsp:include page="Global/footer.jsp" />
