;(function($){
	"use strict";

	$.fn.SocialCounter = function(options) {
		var settings = $.extend({
			// These are the defaults.
			facebook_user:'',
			facebook_token:'',
			instagram_user:'',
			instagram_user_sandbox:'',
			instagram_token:''
		}, options);

		function facebook(){
			//Facebook API
			//60 Day Access Token - Regenerate a new one after two months
			//https://smashballoon.com/custom-facebook-feed/access-token/
			$.ajax({
				url: 'https://graph.facebook.com/v2.8/'+settings.facebook_user,
				dataType: 'json',
				type: 'GET',
				data: {
					access_token:settings.facebook_token,
					fields:'fan_count'
				},
				success: function(data) {
					var followers = parseInt(data.fan_count);
					var k = kFormatter(followers);
					$('.btn-social-counter--fb .btn-social-counter__count-num').append(k);
				}
			});
			$('.btn-social-counter--fb').attr('href','https://facebook.com/'+settings.facebook_user);
		}
		function instagram(){
			//Create access tokens
			//https://www.youtube.com/watch?v=LkuJtIcXR68
			//http://instagram.pixelunion.net
			//http://dmolsen.com/2013/04/05/generating-access-tokens-for-instagram
			//http://ka.lpe.sh/2015/12/24/this-request-requires-scope-public_content-but-this-access-token-is-not-authorized-with-this-scope/
			$.ajax({
				url: 'https://api.instagram.com/v1/users/self/',
				dataType: 'jsonp',
				type: 'GET',
				data: {
					access_token: settings.instagram_token
				},
				success: function(data) {
					var followers = parseInt(data.data.counts.followed_by);
					var k = kFormatter(followers);
					$('.btn-social-counter--instagram .btn-social-counter__count-num').append(k);
				}
			});
			$('.btn-social-counter--instagram').attr('href','https://instagram.com/'+settings.instagram_user);
		}
		//Function to add commas to the thousandths
		$.fn.digits = function(){
			return this.each(function(){
				$(this).text( $(this).text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") );
			})
		}
		//Function to add K to thousands
		function kFormatter(num) {
			return num > 999 ? (num/1000).toFixed(1) + 'k' : num;
		}
		//Call Functions
		if(settings.facebook_user!='' && settings.facebook_token!=''){
			facebook();
		}
		if(settings.instagram_user!='' && settings.instagram_token!=''){
			instagram();
		}
		if(settings.twitter_user!=''){
			twitter();
		}

	};

	$.fn.exists = function () {
		return this.length > 0;
	};

	/* ----------------------------------------------------------- */
	/*  Predefined Variables
	/* ----------------------------------------------------------- */
	var $main_nav = $('.main-nav');
	var $marquee = $('.marquee');
	var $insta_feed = $('#instagram-feed');
	var $social_counters = $('.widget-social');

	var Core = {

		initialize: function() {

			this.SvgPolyfill();

			this.headerNav();

			this.countDown();

			this.InstagramFeed();

			this.SocialCounters();

			this.miscScripts();

		},

		SvgPolyfill: function() {
			svg4everybody();
		},

		headerNav: function() {

			if ( $main_nav.exists() ) {

				var $top_nav     = $('.nav-account');
				var $top_nav_li  = $('.nav-account > li');
				var $social      = $('.social-links--main-nav');
				var $info_nav_li = $('.info-block--header > li');
				var $wrapper     = $('.site-wrapper');
				var $nav_list    = $('.main-nav__list');
				var $nav_list_li = $('.main-nav__list > li');
				var $toggle_btn  = $('#header-mobile__toggle');
				var $pushy_btn   = $('.pushy-panel__toggle');

				// Clone Search Form
				var $header_search_form = $('.header-search-form').clone();
				$('#header-mobile').append($header_search_form);

				// Clone Shopping Cart to Mobile Menu
				var $shop_cart = $('.info-block__item--shopping-cart > .info-block__link-wrapper').clone();
				$shop_cart.appendTo($nav_list).wrap('<li class="main-nav__item--shopping-cart"></li>');

				// Add arrow and class if Top Bar menu ite has submenu
				$top_nav_li.has('ul').addClass('has-children').prepend('<span class="main-nav__toggle"></span>');

				// Clone Top Bar menu to Main Menu
				if ( $top_nav.exists() ) {
					var children = $top_nav.children().clone();
					$nav_list.append(children);
				}

				// Clone Header Logo to Mobile Menu
				var $logo_mobile = $('.header-mobile__logo').clone();
				$nav_list.prepend($logo_mobile);
				$logo_mobile.prepend('<span class="main-nav__back"></span>');

				// Clone Header Info to Mobile Menu
				var header_info1 = $('.info-block__item--contact-primary').clone();
				var header_info2 = $('.info-block__item--contact-secondary').clone();
				$nav_list.append(header_info1).append(header_info2);

				// Clone Social Links to Main Menu
				if ( $social.exists() ) {
					var social_li = $social.children().clone();
					var social_li_new = social_li.contents().unwrap();
					social_li_new.appendTo($nav_list).wrapAll('<li class="main-nav__item--social-links"></li>');
				}

				// Add arrow and class if Info Header Nav has submenu
				$info_nav_li.has('ul').addClass('has-children');

				// Mobile Menu Toggle
				$toggle_btn.on('click', function(){
					$wrapper.toggleClass('site-wrapper--has-overlay');
				});

				$('.site-overlay, .main-nav__back').on('click', function(){
					$wrapper.toggleClass('site-wrapper--has-overlay');
				});

				// Pushy Panel Toggle
				$pushy_btn.on('click', function(e){
					e.preventDefault();
					$wrapper.toggleClass('site-wrapper--has-overlay-pushy');
				});

				$('.site-overlay, .pushy-panel__back-btn').on('click', function(e){
					e.preventDefault();
					$wrapper.removeClass('site-wrapper--has-overlay-pushy site-wrapper--has-overlay');
				});

				// Add toggle button and class if menu has submenu
				$nav_list_li.has('.main-nav__sub').addClass('has-children').prepend('<span class="main-nav__toggle"></span>');

				$('.main-nav__toggle').on('click', function(){
					$(this).toggleClass('main-nav__toggle--rotate')
					.parent().siblings().children().removeClass('main-nav__toggle--rotate');

					$(".main-nav__sub").not($(this).siblings('.main-nav__sub')).slideUp('normal');
					$(this).siblings('.main-nav__sub').slideToggle('normal');
				});

				// Add toggle button and class if submenu has sub-submenu
				$('.main-nav__list > li > ul > li').has('.main-nav__sub-2').addClass('has-children').prepend('<span class="main-nav__toggle-2"></span>');
				$('.main-nav__list > li > ul > li > ul > li').has('.main-nav__sub-3').addClass('has-children').prepend('<span class="main-nav__toggle-2"></span>');

				$('.main-nav__toggle-2').on('click', function(){
					$(this).toggleClass('main-nav__toggle--rotate');
					$(this).siblings('.main-nav__sub-2').slideToggle('normal');
					$(this).siblings('.main-nav__sub-3').slideToggle('normal');
				});

				// Mobile Search
				$('#header-mobile__search-icon').on('click', function(){
					$(this).toggleClass('header-mobile__search-icon--close');
					$('.header-mobile').toggleClass('header-mobile--expanded');
				});
			}
		},

		countDown: function() {

			var countdown = $('.countdown-counter');
			var count_time = countdown.data('date');
			countdown.countdown({
				date: count_time,
				render: function(data) {
					$(this.el).html("<div class='countdown-counter__item countdown-counter__item--days'>" + this.leadingZeros(data.days, 2) + " <span class='countdown-counter__label'>dager</span></div><div class='countdown-counter__item countdown-counter__item--hours'>" + this.leadingZeros(data.hours, 2) + " <span class='countdown-counter__label'>timer</span></div><div class='countdown-counter__item countdown-counter__item--mins'>" + this.leadingZeros(data.min, 2) + " <span class='countdown-counter__label'>min</span></div><div class='countdown-counter__item countdown-counter__item--secs'>" + this.leadingZeros(data.sec, 2) + " <span class='countdown-counter__label'>sek</span></div>");
				}
			});
		},


		InstagramFeed: function(){

			// Basketball version (Footer)
			if ( $insta_feed.exists() ) {

				var insta_feed = new Instafeed({
					get: 'user',
					target: 'instagram-feed',
					userId: '2251271172',
					accessToken: '',
					limit: 6,
					template: '<li class="widget-instagram__item"><a href="{{link}}" id="{{id}}" class="widget-instagram__link-wrapper" target="_blank"><span class="widget-instagram__plus-sign"><img src="{{image}}" alt="" class="widget-instagram__img" /></span></a></li>'
				});
				insta_feed.run();
			}

		},


		SocialCounters: function(){

			if ( $social_counters.exists() ) {

				$social_counters.SocialCounter({
					// Facebook
					facebook_user: '',
					facebook_token: '',

					// Google+
					google_plus_id: '',
					google_plus_key: '',

					// Instagram
					instagram_user: '',
					instagram_token: '',

					// Twitter
					twitter_user: '',

					// Twitch
					twitch_username: '',
					twitch_client_id: '',

					// YouTube
					youtube_user: '',
					youtube_key: '',
				});

			}

		},


		miscScripts: function() {
			// Tooltips
			$('[data-toggle="tooltip"]').tooltip();


			// Marquee
			if ( $marquee.exists() ) {
				$marquee.marquee({
					allowCss3Support: true,
					pauseOnHover: true
				});
			}


      function pay(amount) {
          var handler = StripeCheckout.configure({
              key: 'pk_test_XgeQxMRQMW2boifqH5bbwCQI',
              locale: 'auto',
              token: function(token) {
                  $.ajax({
                      url: '{{ route("deposit") }}',
                      method: 'post',
                      data: {
                          _token: '{{ csrf_token() }}',
                          tokenID: token.id,
                          amount: amount * 100
                      },
                      success: (response) => {
                          if(response.status == true) {
                              Swal.fire('Congrats!', response.message, 'success').then(function() {
                                  window.location.replace("{{ route('home') }}");
                              });
                          } else {
                              Swal.fire('Opps!', response.message, 'error');
                          }
                      },
                      error: (error) => {
                          Swal.fire('Opps!', 'Something went wrong!', 'error');
                      }
                  });
              }
          });
          handler.open({
              name: 'eMysteryBox Deposit',
              description: 'Deposit to your wallet and open the boxes.',
              amount: amount * 100
          });
      }



      $("#pay").click(function(e) {
          e.preventDefault();
          var amount = $('#amount').val();
          if(amount != '') {
              pay(amount);
          }
      });


		},

	};

	$(document).on('ready', function() {
		Core.initialize();
	});

})(jQuery);
