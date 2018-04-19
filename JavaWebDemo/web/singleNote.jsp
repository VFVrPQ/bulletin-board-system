<%@page contentType="text/html; charset=utf-8" %>
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
                                                <li><a href="index-2.html">Home</a></li>
                                                <li><a href="home-categories-description.html">Home 2</a></li>
                                                <li><a href="home-categories-articles.html">Home 3</a></li>
                                                <li><a href="articles-list.html">Articles List</a></li>
                                                <li><a href="faq.html">FAQs</a></li>
                                                <li><a href="#">Skins</a>
                                                        <ul class="sub-menu">
                                                                <li><a href="blue-skin.html">Blue Skin</a></li>
                                                                <li><a href="green-skin.html">Green Skin</a></li>
                                                                <li><a href="red-skin.html">Red Skin</a></li>
                                                                <li><a href="index-2.html">Default Skin</a></li>
                                                        </ul>
                                                </li>
                                                <li><a href="#">More</a>
                                                        <ul class="sub-menu">
                                                                <li><a href="full-width.html">Full Width</a></li>
                                                                <li><a href="elements.html">Elements</a></li>
                                                                <li><a href="page.html">Sample Page</a></li>
                                                        </ul>
                                                </li>
                                                <li><a href="contact.html">Contact</a></li>
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

                <form id="search-form" class="search-form clearfix" method="get" action="#" autocomplete="off">
                        <input class="search-term required" type="text" id="s" name="s" placeholder="Type your search terms here" title="* Please enter a search term!" />
                        <input class="search-btn" type="submit" value="Search" />
                        <div id="search-error-container"></div>
                </form>
        </div>
</div>
<!-- End of Search Wrapper -->

<!-- Start of Page Container -->
<div class="page-container">
        <div class="container">
                <div class="row">

                        <!-- start of page content -->
                        <div class="span8 page-content">

                                <ul class="breadcrumb">
                                        <li><a href="#">Knowledge Base Theme</a><span class="divider">/</span></li>
                                        <li><a href="#" title="View all posts in Server &amp; Database">Server &amp; Database</a> <span class="divider">/</span></li>
                                        <li class="active">Integrating WordPress with Your Website</li>
                                </ul>

                                <div id="main_listing_div"></div>

                                <div class="like-btn">

                                        <form id="like-it-form" action="#" method="post">
                                                <span class="like-it ">66</span>
                                                <input type="hidden" name="post_id" value="99">
                                                <input type="hidden" name="action" value="like_it">
                                        </form>

                                        <span class="tags">
                                                                <strong>Tags:&nbsp;&nbsp;</strong><a href="#" rel="tag">basic</a>, <a href="#" rel="tag">setting</a>, <a href="http://knowledgebase.inspirythemes.com/tag/website/" rel="tag">website</a>
                                                        </span>

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

<!-- Start of Footer -->
<footer id="footer-wrapper">
        <div id="footer" class="container">
                <div class="row">

                        <div class="span3">
                                <section class="widget">
                                        <h3 class="title">How it works</h3>
                                        <div class="textwidget">
                                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                                                <p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>
                                        </div>
                                </section>
                        </div>

                        <div class="span3">
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
                        </div>

                        <div class="span3">
                                <section class="widget">
                                        <h3 class="title">Latest Tweets</h3>
                                        <div id="twitter_update_list">
                                                <ul>
                                                        <li>No Tweets loaded !</li>
                                                </ul>
                                        </div>
                                        <script src="http://twitterjs.googlecode.com/svn/trunk/src/twitter.min.js" type="text/javascript"></script>
                                        <script type="text/javascript" >
                                            getTwitters("twitter_update_list", {
                                                id: "960development",
                                                count: 3,
                                                enableLinks: true,
                                                ignoreReplies: true,
                                                clearContents: true,
                                                template: "%text% <span>%time%</span>"
                                            });
                                        </script>
                                </section>
                        </div>

                        <div class="span3">
                                <section class="widget">
                                        <h3 class="title">Flickr Photos</h3>
                                        <div class="flickr-photos" id="basicuse">
                                        </div>
                                </section>
                        </div>

                </div>
        </div>
        <!-- end of #footer -->

        <!-- Footer Bottom -->
        <div id="footer-bottom-wrapper">
                <div id="footer-bottom" class="container">
                        <div class="row">
                                <div class="span6">
                                        <p class="copyright">
                                                Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                                        </p>
                                </div>
                                <div class="span6">
                                        <!-- Social Navigation -->
                                        <ul class="social-nav clearfix">
                                                <li class="linkedin"><a target="_blank" href="#"></a></li>
                                                <li class="stumble"><a target="_blank" href="#"></a></li>
                                                <li class="google"><a target="_blank" href="#"></a></li>
                                                <li class="deviantart"><a target="_blank" href="#"></a></li>
                                                <li class="flickr"><a target="_blank" href="#"></a></li>
                                                <li class="skype"><a target="_blank" href="skype:#?call"></a></li>
                                                <li class="rss"><a target="_blank" href="#"></a></li>
                                                <li class="twitter"><a target="_blank" href="#"></a></li>
                                                <li class="facebook"><a target="_blank" href="#"></a></li>
                                        </ul>
                                </div>
                        </div>
                </div>
        </div>
        <!-- End of Footer Bottom -->

</footer>
<!-- End of Footer -->

<a href="#top" id="scroll-top"></a>

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

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
