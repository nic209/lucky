{* // Helper Here  *}
{include_php file="{$smarty.current_dir}/package-price-helper_tmp.php" assign="null"}
{*  *}
{if !$smarty.session.__LUCKY_LOGGEDIN__ or !$smarty.session.__MEMBER__.user_type}
    {$package_price_use=$package_price.newuser}
{else}
    {$package_price_use=$package_price.olduser}
{/if}

{$page="home"}
{include file="{$smarty.current_dir}/header.tpl"}

<!--
<script src="js/google-code-prettify/prettify.js"></script>
<link href="js/google-code-prettify/prettify.css" rel="stylesheet">
-->
<script>
    $(document).ready(function() {
        $("#owl-cover").owlCarousel({
            navigation : true,
            slideSpeed : 500,
            paginationSpeed : 500,
            singleItem : true,
            autoPlay: 5999,
        });});
</script>
<script>
    $(document).ready(function() {
        var owl = $("#owl-certificate");
        owl.owlCarousel({
            itemsCustom : [
                [0, 3],
                [450, 3],
                [600, 3],
                [700, 4],
                [1000, 4],
                [1200, 4],
                [1400, 5],
                [1600, 5],
                [1800, 5]
            ], navigation : true
        });});
</script>
<!-- Page Content -->
<div class="content"><a name="home"></a>

	<section id="cover">
    		<div class="owl-left-decor"><img src="img/decor/cover_home_left.png" class="img-responsive"></div>
            <div class="owl-right-decor"><img src="img/decor/cover_home_right.png" class="img-responsive"></div>
            
            <div id="owl-cover" class="owl-carousel">

                <div class="item">
                <div class="caption">
                    <h1>
                        KNOW <b>YOUR</b><br>
                        <b>FUTURE</b><br>
                        BEFORE <b>IT'S</b><br>
                        <b>COMING</b>
                    </h1>
                    <h6>Application for age 16 up to 75</h6>
                    <br>
                    <div class="container">
                        <div class="col col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                            <div class="col col-lg-6 col-md-6 col-sm-12 col-xs-12"><a class="btn btn-signup btn-multiuser" href="/members-signup-multiusers/packages/"><i class="fa fa-angle-right"></i>Sign up now for <b>Multi-User</b></a></div>
                            <div class="col col-lg-6 col-md-6 col-sm-12 col-xs-12"><a class="btn btn-signup btn-newuser" href="/members-signup/packages/"><i class="fa fa-angle-right"></i>Sign up now for <b>NEW User</b></a></div>
                        </div>
                    </div>
                    
                </div>
                </div>
        
                <div class="item item-charm" style=" background-image:url(img/decor/cover_bg.png); background-position:bottom center; background-size:cover; background-repeat:no-repeat;">
                <div class="owl-left-decor"><img src="img/decor/cover_charm_left.png" class="img-responsive"></div>
                <div class="owl-right-decor"><img src="img/decor/cover_charm_right.png" class="img-responsive"></div>
                <div class="caption">
                    <h1><img src="img/decor/decor_charm.png" class="img-responsive"></h1>
                    <h5>Predict your attractive level<br>and enjoy your beloved life</h5>
                    <h6>Application for age 16 up to 75</h6>
                    <br>
                    <div class="container">
                        <div class="col col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                            <div class="col col-lg-6 col-md-6 col-sm-12 col-xs-12"><a class="btn btn-signup btn-multiuser" href="/members-signup-multiusers/packages/"><i class="fa fa-angle-right"></i>Sign up now for <b>Multi-User</b></a></div>
                            <div class="col col-lg-6 col-md-6 col-sm-12 col-xs-12"><a class="btn btn-signup btn-newuser" href="/members-signup/packages/"><i class="fa fa-angle-right"></i>Sign up now for <b>NEW User</b></a></div>
                        </div>
                    </div>
                    
                </div>
                </div>      
                
                <div class="item item-lucky" style=" background-image:url(img/decor/cover_bg.png); background-position:bottom center; background-size:cover; background-repeat:no-repeat;">
                <div class="owl-left-decor"><img src="img/decor/cover_lucky_left.png" class="img-responsive"></div>
                <div class="owl-right-decor"><img src="img/decor/cover_lucky_right.png" class="img-responsive"></div>
                <div class="caption">
                    <h1><img src="img/decor/decor_lucky.png" class="img-responsive" width="60%" style="margin:0 auto;"></h1>
                    <h5>know your lucky rank<br>and increase your chance of success</h5>
                    <h6>Application for age 16 up to 75</h6>
                    <br>
                    <div class="container">
                        <div class="col col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                            <div class="col col-lg-6 col-md-6 col-sm-12 col-xs-12"><a class="btn btn-signup btn-multiuser" href="/members-signup-multiusers/packages/"><i class="fa fa-angle-right"></i>Sign up now for <b>Multi-User</b></a></div>
                            <div class="col col-lg-6 col-md-6 col-sm-12 col-xs-12"><a class="btn btn-signup btn-newuser" href="/members-signup/packages/"><i class="fa fa-angle-right"></i>Sign up now for <b>NEW User</b></a></div>
                        </div>
                    </div>
                    
                </div>
                </div>   
                
                <div class="item item-owl" style=" background-image:url(img/decor/home_bg.jpg); background-position:bottom center; background-size:cover; background-repeat:no-repeat;">
                <div class="owl-left-decor"><img src="img/decor/cover_owl_left.png" class="img-responsive"></div>
                <div class="owl-right-decor"><img src="img/decor/cover_owl_right.png" class="img-responsive"></div>
                <div class="caption">
                    <h2 class="slide4">
                        <span class="white">Let</span> <b>owluckyrank</b><br>
                        <span class="white">change your life</span>
                    </h2>
                    <br>
                    <h6>Application for age 16 up to 75</h6>
                    <br><br>
                    <div class="container">
                        <div class="col col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                            <div class="col col-lg-6 col-md-6 col-sm-12 col-xs-12"><a class="btn btn-signup btn-multiuser" href="/members-signup-multiusers/packages/"><i class="fa fa-angle-right"></i>Sign up now for <b>Multi-User</b></a></div>
                            <div class="col col-lg-6 col-md-6 col-sm-12 col-xs-12"><a class="btn btn-signup btn-newuser" href="/members-signup/packages/"><i class="fa fa-angle-right"></i>Sign up now for <b>NEW User</b></a></div>
                        </div>
                    </div>
                    
                </div>
                </div>

            </div><!-- /.owl-carousel -->
    <a name="about"></a>         
	</section><!-- /#cover -->

	<section id="about">
    	<a href="#about"><div class="owl-up-decor"><i class="fa fa-angle-down"></i></div></a>
    	<div class="owl-right-decor"><img src="img/decor/cover_about_01.png" class="img-responsive"></div>
    	<div class="container">
        <a href="#whatis"><div class="owl-down-decor"><i class="fa fa-angle-down"></i></div></a>
        	<div class="col col-lg-12">
            <div class="col col-lg-7">
            	<br>
                <h2>OwLuckyRank is</h2>
                <p>An application that have an ability to calculate and predict the future luck of the user, which varies over time.</p>
                <p>This application will display a numerical value as a result of your luck at various time period, this number is "<b>your</b>" lucky rank index (and is specific to the user only). The number is referenced to the normal level of user's luck 
                and should not be used to compare with other user's luck.</p>
            </div>
            <div class="col col-lg-12 col-owl-decor"><img src="img/decor/cover_about_01.png" class="img-responsive"></div>
            </div>
            <div class="col col-lg-12">
            <div class="col col-lg-4">
            	<br>
                <p><b>Real time lucky rank</b> tells you the sum of good fortune and bad fortune that had an impact on you at that time, this predicts whether your event in that moment is helpful or is likely to cause damage to you.</p>
                <br>
                <p><b>Schedule lucky rank</b> displays a table that you can plan on key events in the future, in the period that your lucky rank index is positive (good luck). Planning your upcoming events on the positive phase will increase your chance 
                of success, whetherit is an gambling, investment, job application, shopping, negotiation, travelling or even love.</p>
            </div>
            </div>
    	</div>
	</section>
    
    <a name="whatis"></a>
    <section id="whatis">
    	<div class="container">
        <a href="#howtouse"><div class="owl-down-decor"><i class="fa fa-angle-down"></i></div></a>
        	<div class="col col-lg-12"><img src="img/decor/cover_whatis_01.png" class="img-responsive"></div>
        	<div class="col col-lg-12">
            <div class="col col-lg-7 col-lg-offset-5">
                <p><b>Lucky Rank</b> – it is obvious that choosing right alternatives in the moment might save you from unlucky moments. number with large positive value is an indication that you are in a very good state of fortune. on the contrary, number with negative value would indicate that you are at risk to get unfortunate in some way.</p>
                <br>
                <p><b>Charming Level</b> – there might be a moment for some time that you are attractive. this option will help you predict that moment and show your attraction level! so choose appropriate activity that is closely related to your attractive level at the moment. you will definitely benefit from using this information from charming level, not only in love, but also in social acceptance.</p>
            </div>
            </div>
    	</div>
	</section>
    
    
    <a name="howtouse"></a> 
    <section id="howtouse">
    	<div class="container">
        	<a href="#package"><div class="owl-down-decor"><i class="fa fa-angle-down"></i></div></a>
        	<div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h3>OwLuckyRank is Now Available for Download.<br>Let OwLuckyRank Change your Life!</h3>
            
            <div class="col-step col col-lg-3">
            	<div class="icon"><img src="img/decor/howtouse_step_01.png" class="img-responsive"></div>
                <div class="content">
                	<h5>1</h5>
                    <h6>Login</h6>
				</div>
            </div>
            
            <div class="col-step col col-lg-3">
            	<div class="icon"><img src="img/decor/howtouse_step_02.png" class="img-responsive"></div>
                <div class="content">
                	<h5>2</h5>
                    <h6>Get your<br>Lucky Rank and<br>Charming Level Data</h6>
				</div>
            </div>
            
            <div class="col-step col col-lg-3">
            	<div class="icon"><img src="img/decor/howtouse_step_03.png" class="img-responsive"></div>
				<div class="content">
                	<h5>3</h5>
                    <h6>Adjust your<br>Daily Life with<br>OwLuckyRank Data</h6>
				</div>
            </div>
            
            <div class="col-step col col-lg-3">
            	<div class="icon"><img src="img/decor/howtouse_step_04.png" class="img-responsive"></div>
				<div class="content">
                	<h5>4</h5>
                    <h6>Enjoy your<br>Result</h6>
				</div>
            </div>
            
            </div>
        </div>
    </section>
    
    
    <a name="package"></a> 
    <section id="package">
    	<div class="container">
        <a href="#home"><div class="owl-down-decor"><i class="fa fa-angle-up"></i></div></a>
        	<div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h3>Package</h3>
            <h4>Don't worry, your puchase is one time payment, not monthly payment.</h4>
                {if $smarty.session.__LUCKY_LOGGEDIN__}
                <div class="col col-lg-2">
                </div>
                {/if}
            <div class="col col-lg-4">
            	<div class="col col-plan">
                	<h5>platinum</h5>
                    <ul>
                    	<li><i class="fa fa-smile-o"></i> <b>1</b><small class="pull-right">user</small></li>
                        <li><i class="fa fa-clock-o"></i> <b>30</b><small class="pull-right">days</small></li>
                        <li><i class="fa fa-usd"></i> <b>{$package_price_use[2]}</b><small class="pull-right">usd</small></li>
                    </ul>
                    <div class="decs">
                    	<p><i class="fa fa-check-circle"></i> + free 7 days</p>
                        <p><i class="fa fa-check-circle"></i> real time lucky rank</p>
                        <p><i class="fa fa-check-circle"></i> future lucky rank schedule</p>
                    </div>
                    <div class="buynow"><a href="/members-signup/packages/platinum/form" class="btn btn-buy">buy now <i class="fa fa-cart-arrow-down"></i></a></div>
                    <div class="decor decor-plat"><img src="img/decor/decor_plan_01.png" class="img-responsive"></div>
                </div>
            </div>
            
            <div class="col col-lg-4">
            	<div class="col col-plan">
                	<h5>silver</h5>
                    <ul>
                    	<li><i class="fa fa-smile-o"></i> <b>1</b><small class="pull-right">user</small></li>
                        <li><i class="fa fa-clock-o"></i> <b>15</b><small class="pull-right">days</small></li>
                        <li><i class="fa fa-usd"></i> <b>{$package_price_use[1]}</b><small class="pull-right">usd</small></li>
                    </ul>
                    <div class="decs">
                    	<p><i class="fa fa-check-circle"></i> + free 7 days</p>
                        <p><i class="fa fa-check-circle"></i> real time lucky rank</p>
                        <p><i class="fa fa-check-circle"></i> future lucky rank schedule</p>
                    </div>
                    <div class="buynow"><a href="/members-signup/packages/silver/form" class="btn btn-buy">buy now <i class="fa fa-cart-arrow-down"></i></a></div>
                    <div class="decor decor-silver"><img src="img/decor/decor_plan_02.png" class="img-responsive"></div>
                </div>
            </div>
                {if !$smarty.session.__LUCKY_LOGGEDIN__}
            <div class="col col-lg-4">
            	<div class="col col-plan">
                	<h6>you can try OwLuckyRank for free of charge before deciding to use our service.</h6>
                    <div class="decs">
                    	<p><i class="fa fa-check-circle"></i> + free 7 days</p>
                        <p><i class="fa fa-check-circle"></i> real time lucky rank</p>
                    </div>
                    <div class="buynow"><a href="/members-signup/packages/free/form" class="btn btn-free">free trial</a></div>
                    <div class="decor decor-free"><img src="img/decor/decor_plan_03.png" class="img-responsive"></div>
                </div>
            </div>
            {/if}
            </div>
        </div>
    </section>
    
    
    <section id="contact">
    	<div class="container">
        <div class="col col-lg-4">
        	<div class="logo">
            	<a class="footer-brand" href="<?= $site_url; ?>">
                <img src="img/common/logo.png" class="img-responsive logo-symbol" alt="<?=$title;?>" />
                <img src="img/common/name.png" class="img-responsive logo-name" alt="<?=$title;?>" />
        		</a>
            </div>
            <div class="copyright">&copy; 2016-2020 OwLuckyRank.com All Right Reserved.<br>Certain images, logos and products are trademarks of and/or copyrighted by their respective owners.</div>
        </div>
        <div class="col col-lg-4">
        	<div class="title">Contact</div>
            <ul>
            	<li class="li-email"><i class="fa fa-envelope"></i><a href="">info@owluckyrank.com</a></li>
                <li class="li-feedback"><i class="fa fa-comment"></i><a class="btn btn-feedback" href="contact.php">Feedback</a></li>
            </ul>
        </div>
        <div class="col col-lg-4">
        	<div class="title">Follow owluckyrank</div>
            <ul>
            	<li class="li-social"><a href=""><i class="fa fa-social fa-facebook-square"></i></a> <a href=""><i class="fa fa-social fa-twitter-square"></i></a></li>
                <li><a href="term.php">terms of service</a></li>
                <li><a href="policy.php">privacy policy</a></li>
            </ul>
        </div>
        </div>
    </section>


</div><!-- /.content -->

<script>
function goBack() {
    window.history.back();
}
</script>

</body>

<script type="text/javascript" src="js/bootstrap.js"></script>
<script src="js/owl.carousel.js"></script>
<script type="text/javascript" src="js/moment.js"></script>
<script type="text/javascript" src="js/lodash.min.js"></script>
<script type="text/javascript" src="js/angular.min.js"></script>
<script type="text/javascript" src="js/angular-route.min.js"></script>
<script type="text/javascript" src="js/angular-sanitize.min.js"></script>
<script type="text/javascript" src="js/angular-resource.min.js"></script>
<!--<script type="text/javascript" src="js/angular-ui-router.js"></script>-->
<script type="text/javascript" src="js/membersController.js?"></script>
</html>
