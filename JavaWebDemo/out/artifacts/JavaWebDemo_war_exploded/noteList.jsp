<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<jsp:include page="Global/head.jsp?currentMenuItem=noteList"/>

<!-- Start of Page Container -->
<div class="page-container">
        <div class="container">
                <div class="row">

                        <!-- start of page content -->
                        <div class="span8 main-listing">
                            <div id="main_listing_div"></div>
                            <div id="pagination">
                                <a href="#" class="btn" onclick="paginationPre()" id="pagination_pre_btn">上一页</a>
                                <a href="#" class="btn" onclick="paginationNext()" id="pagination_next_btn">下一页</a>
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
<script type="text/javascript" src="Global/global.js"></script>
<script type="text/javascript" src='js/noteList.js'></script>

<jsp:include page="Global/footer.jsp" />
