<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>{$title}</title>
    <base href="{$web_base}/#">
<meta name="description" content=""/>
<meta name="author" content="Toonni Lomio" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="img/common/favicon.ico" rel="shortcut icon" type="image/x-icon"/>
    <script type="text/javascript" src="js/jquery.js"></script>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<link href="css/custom-responsive.css" rel="stylesheet">
<link href="css/angular-timezone-selector.css" rel="stylesheet" type="text/css" />
<link href="css/select2.min.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript"> 
// Navbar Fixed at Top Page
$(document).ready(function(){
		$(window).scroll(function() {
			if ($(this).scrollTop() > 150) {
				$('header').addClass('navi-fixed');
			} else {
				$('header').removeClass('navi-fixed');
			}
		});
});
</script>

<!-- Owl Carousel Assets -->
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.theme.css" rel="stylesheet">


<!-- Smooth Scroll -->
<script>
$(function() {
	var $window = $(window), $document = $(document),
		transitionSupported = typeof document.body.style.transitionProperty === "string", // detect CSS transition support
		scrollTime = 1; // scroll time in seconds

	$(document).on("click", "a[href*=#]:not([href=#])", function(e) {
		var target, avail, scroll, deltaScroll;
        //console.log(history);
        //console.log(parent.location.hash);    //text
        //console.log($(this.hash));  object
        parent.location.hash = '';
        //history.pushState("", document.title, window.location.pathname);

		if (location.pathname.replace(/^\//, "") == this.pathname.replace(/^\//, "") && location.hostname == this.hostname) {
            //console.log(location.pathname);
			target = $(this.hash);
			target = target.length ? target : $("[id=" + this.hash.slice(1) + "]");
console.log('target='+target);
			if (target.length) {
				avail = $document.height() - $window.height();

				if (avail > 0) {
					scroll = target.offset().top;
          
					if (scroll > avail) {
						scroll = avail;
					}
				} else {
					scroll = 0;
				}
                //document.location.href.replace(location.hash , "" );
				deltaScroll = $window.scrollTop() - scroll;

				// if we don't have to scroll because we're already at the right scrolling level,
				if (!deltaScroll) {
					return; // do nothing
				}

				e.preventDefault();

				if (transitionSupported) {
					$("html").css({
						"margin-top": deltaScroll + "px",
						"transition": scrollTime + "s ease-in-out"
					}).data("transitioning", scroll);
				} else {
					$("html, body").stop(true, true) // stop potential other jQuery animation (assuming we're the only one doing it)
					.animate({
						scrollTop: scroll + "px"
					}, scrollTime * 1000);
                    history.pushState("", document.title, window.location.pathname);
                    var loc = window.location.href,
                            index = loc.indexOf('#');

                    if (index > 0) {
                        window.location = loc.substring(0, index);
                    }
					return;
				}
			}
            history.pushState("", document.title, window.location.pathname);
            var loc = window.location.href,
                    index = loc.indexOf('#');

            if (index > 0) {
                window.location = loc.substring(0, index);
            }
		}
	});

	if (transitionSupported) {
		$("html").on("transitionend webkitTransitionEnd msTransitionEnd oTransitionEnd", function(e) {
			var $this = $(this),
				scroll = $this.data("transitioning");
			
			if (e.target === e.currentTarget && scroll) {
				$this.removeAttr("style").removeData("transitioning");
				
				$("html, body").scrollTop(scroll);
			}
		});
	}
});
</script>



</head>

<body id="{$page}">

<header> 

<div class="nav-bottom">

<nav class="navbar navbar-inverse">
        <div class="navbar-header">
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
        <span class="sr-only">Toggle Navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
                <a class="navbar-brand" href="/">
                    <img src="img/common/logo.png" class="img-responsive logo-symbol" alt="{$title}" />
                    <img src="img/common/name.png" class="img-responsive logo-name" alt="{$title}" />
        </a> 
        </div>
	
            <div class="collapse navbar-collapse js-navbar-collapse" data-ng-app="LoginModule">
        
        <ul class="nav navbar-nav navbar-center">
                <li><a href="/{($smarty.get.__CONTROLLER__)? '':'#home'}">Home</a></li>
                <li><a href="/#about">About</a></li>
                <li><a href="/#package">Package</a></li>
                <li><a href="/#contact">Contact</a></li>
                
        </ul>
                {if !$smarty.session.__LUCKY_LOGGEDIN__}
                    <ul class="nav navbar-nav navbar-right" data-ng-controller="HeadLoginCtrl" >
                        <div class="collapse nav navbar-nav nav-collapse slide-down" id="collapse-login">
                            <form class="navbar-form navbar-right form-inline" role="form"
                                              data-ng-submit="loginSubmit()">
                                          <div class="form-group">
                                            <label class="sr-only" for="Username">Username</label>
                                              <input type="username" class="form-control"
                                                     id="Username" placeholder="Username" autofocus required
                                                     data-ng-model="username"/>
                                          </div>
                                          <div class="form-group">
                                            <label class="sr-only" for="Password">Password</label>
                                              <input type="password" class="form-control"
                                                     id="Password" placeholder="Password" required
                                                     data-ng-model="password" />
                                          </div>
                                          <button type="submit" class="btn btn-primary"
                                                  data-ng-disabled="LoginClick">Login</button>
                        <!--
                                          <div class="checkbox">
                                            <label>
                                              <input type="checkbox">Keep me Logged in.
                                            </label>
                                          </div>
-->
                           </form>

                       </div>


                   <li class="login">
                         <a class=""  data-toggle="collapse"
                            href="#collapse-login" aria-expanded="false" aria-controls="collapse-login">
                             <div class="icon" style="padding:3px">
                                 <i class="fa fa-lock" style="width: 18px;height: 12px"></i>
                             </div> Login
                         </a>
                   </li>

                   </ul>

        {else}
        <ul class="nav navbar-nav navbar-right">
                <li class="timezone"><div class="zone"><i class="fa fa-clock-o"></i> <b>Server Time</b><br />Timezone of use</div><div class="time">{$member_server_time_use_now|date_format:"%H:%M %p"}</div></li>
                <li><a href="/members-luckyrank/now" class="icon"><i class="fa fa-bell"></i></a>
                    <a href="/members-profile" class="icon"><i class="fa fa-cog"></i></a></li>
                <li class="member">
                    	<div>Welcome</div><a href="/members-profile">{$smarty.session.__MEMBER__.username}</a>
                </li>
        </ul>
        {/if}
        
        </div><!-- /.nav-collapse -->
        
     
        
</nav> 

            <!-- Modal Error Login -->
            <div id="modal-erroruser" class="modal fade in modal-error">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <a class="btn btn-default btn-close" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span></a>
                            <div class="photo"><img src="img/decor/decor_sorry.png" class="img-responsive"></div>
                            <h3>That username doesn't exist.<br>please try again.</h3>
                            <h4>if you can't access your account or<br>forgot yourpassword<br>please contact us</h4>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dalog -->
            </div><!-- /.modal -->
            <div id="modal-errorpass" class="modal fade in modal-error">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <a class="btn btn-default btn-close" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span></a>
                            <div class="photo"><img src="img/decor/decor_sorry.png" class="img-responsive"></div>
                            <h3>That password is incorrect.<br>please try again.</h3>
                            <h4>if you can't access your account or<br>forgot yourpassword<br>please contact us</h4>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dalog -->
            </div><!-- /.modal -->

</div><!-- /.nav-bottom -->


</header>





