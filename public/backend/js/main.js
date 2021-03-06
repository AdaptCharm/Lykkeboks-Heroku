"use strict";
!function(i) {
    var n = i(window)
      , a = i("body");
    feather.replace(),
    i(document).on("click", '[data-toggle="fullscreen"]', function() {
        return i(this).toggleClass("active-fullscreen"),
        document.fullscreenEnabled ? i(this).hasClass("active-fullscreen") ? document.documentElement.requestFullscreen() : document.exitFullscreen() : alert("Your browser does not support fullscreen."),
        !1
    }),
    a.hasClass("small-navigation") && i(".navigation .navigation-menu-body > ul > li").each(function() {
        i(this).find("> a").next("ul").length ? i(this).find("> a").next("ul").prepend('<li class="dropdown-divider">' + i(this).find("> a > span:not(.badge)").text() + "</li>") : (i(this).find("> a").attr("title", i(this).find("> a > span:not(.badge)").text()),
        i(this).find("> a").tooltip({
            placement: "right"
        }))
    }),
    i(document).on("click", ".navigation-toggler > a", function() {
        return a.hasClass("small-navigation") ? (a.removeClass("small-navigation"),
        i(".navigation").niceScroll(),
        i(".navigation .navigation-menu-body > ul > li").each(function() {
            i(this).find("> a").next("ul").length ? i(this).find(".dropdown-divider").remove() : i(this).find("> a").tooltip("dispose")
        })) : a.hasClass("hidden-navigation") || n.width() < 1200 ? (i.createOverlay(),
        i(".navigation").addClass("open"),
        i(".navigation").on("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend", function(e) {
            i(".navigation").niceScroll().resize()
        }),
        i('[data-toggle="dropdown"]').dropdown("hide")) : (a.addClass("small-navigation"),
        i(".navigation").getNiceScroll().remove(),
        i(".navigation .navigation-menu-body > ul > li").each(function() {
            i(this).find("> a").next("ul").length ? i(this).find("> a").next("ul").prepend('<li class="dropdown-divider">' + i(this).find("> a > span:not(.badge)").text() + "</li>") : (i(this).find("> a").attr("title", i(this).find("> a > span:not(.badge)").text()),
            i(this).find("> a").tooltip({
                placement: "right"
            }))
        })),
        !1
    }),
    i(document).on("click", ".overlay", function() {
        i.removeOverlay(),
        a.hasClass("hidden-navigation") && i(".navigation").niceScroll().remove(),
        i(".navigation").removeClass("open")
    }),
    i.createOverlay = function() {
        i(".overlay").length < 1 && (a.addClass("no-scroll").append('<div class="overlay"></div>'),
        i(".overlay").addClass("show"))
    }
    ,
    i.removeOverlay = function() {
        a.removeClass("no-scroll"),
        i(".overlay").remove()
    }
    ,
    i("[data-backround-image]").each(function(e) {
        i(this).css("background", "url(" + i(this).data("backround-image") + ")")
    }),
    n.on("load", function() {
        i(".preloader").fadeOut(700, function() {
            setTimeout(function() {
                toastr.options = {
                    timeOut: 5e3,
                    progressBar: !0,
                    showMethod: "slideDown",
                    hideMethod: "slideUp",
                    showDuration: 200,
                    hideDuration: 200
                },
                toastr.info("Welcome Nikos Pedlow."),
                i(".theme-switcher").removeClass("open")
            }, 500),
            i(".theme-switcher").css("opacity", 1)
        })
    }),
    n.on("load", function() {
        setTimeout(function() {
            i(".navigation .navigation-menu-body ul li a").each(function() {
                var e = i(this);
                e.next("ul").length && e.append('<i class="sub-menu-arrow ti-angle-up"></i>')
            }),
            i(".navigation .navigation-menu-body ul li.open>a>.sub-menu-arrow").removeClass("ti-plus").addClass("ti-minus").addClass("rotate-in")
        }, 200)
    }),
    i(document).on("click", ".header-toggler a", function() {
        return i(".header ul.navbar-nav").toggleClass("open"),
        !1
    }),
    i(document).on("click", "*", function(e) {
        i(e.target).is(".header ul.navbar-nav, .header ul.navbar-nav *, .header-toggler, .header-toggler *") || i(".header ul.navbar-nav").removeClass("open")
    }),
    window.addEventListener("load", function() {
        var e = document.getElementsByClassName("needs-validation");
        Array.prototype.filter.call(e, function(t) {
            t.addEventListener("submit", function(e) {
                !1 === t.checkValidity() && (e.preventDefault(),
                e.stopPropagation()),
                t.classList.add("was-validated")
            }, !1)
        })
    }, !1);
    var e = i(".table-responsive-stack");
    function t() {
        n.width() < 768 ? i(".table-responsive-stack").each(function(e) {
            i(this).find(".table-responsive-stack-thead").show(),
            i(this).find("thead").hide()
        }) : i(".table-responsive-stack").each(function(e) {
            i(this).find(".table-responsive-stack-thead").hide(),
            i(this).find("thead").show()
        })
    }
    e.find("th").each(function(e) {
        i(".table-responsive-stack td:nth-child(" + (e + 1) + ")").prepend('<span class="table-responsive-stack-thead">' + i(this).text() + ":</span> "),
        i(".table-responsive-stack-thead").hide()
    }),
    e.each(function() {
        var e = 100 / i(this).find("th").length + "%";
        i(this).find("th, td").css("flex-basis", e)
    }),
    t(),
    window.onresize = function(e) {
        t()
    }
    ,
    i(document).on("click", ".accordion.custom-accordion .accordion-row a.accordion-header", function() {
        var e = i(this);
        return e.closest(".accordion.custom-accordion").find(".accordion-row").not(e.parent()).removeClass("open"),
        e.parent(".accordion-row").toggleClass("open"),
        !1
    });
    var o, s = i(".table-responsive");
    if (s.on("show.bs.dropdown", function(e) {
        o = i(e.target).find(".dropdown-menu"),
        a.append(o.detach());
        var t = i(e.target).offset();
        o.css({
            display: "block",
            top: t.top + i(e.target).outerHeight(),
            left: t.left,
            width: "184px",
            "font-size": "14px"
        }),
        o.addClass("mobPosDropdown")
    }),
    s.on("hide.bs.dropdown", function(e) {
        i(e.target).append(o.detach()),
        o.hide()
    }),
    i(document).on("click", ".chat-app-wrapper .btn-chat-sidebar-open", function() {
        return i(".chat-app-wrapper .chat-sidebar").addClass("chat-sidebar-opened"),
        !1
    }),
    i(document).on("click", "*", function(e) {
        i(e.target).is(".chat-app-wrapper .chat-sidebar, .chat-app-wrapper .chat-sidebar *, .chat-app-wrapper .btn-chat-sidebar-open, .chat-app-wrapper .btn-chat-sidebar-open *") || i(".chat-app-wrapper .chat-sidebar").removeClass("chat-sidebar-opened")
    }),
    i(document).on("click", ".navigation ul li a", function() {
        var e = i(this);
        if (e.next("ul").length) {
            var t = e.find(".sub-menu-arrow");
            return t.toggleClass("rotate-in"),
            e.next("ul").toggle(200),
            e.parent("li").siblings().find("ul").not(e.parent("li").find("ul")).slideUp(200),
            e.next("ul").find("li ul").slideUp(200),
            e.next("ul").find("li>a").find(".sub-menu-arrow").removeClass("ti-minus").addClass("ti-plus"),
            e.next("ul").find("li>a").find(".sub-menu-arrow").removeClass("rotate-in"),
            e.parent("li").siblings().not(e.parent("li").find("ul")).find(">a").find(".sub-menu-arrow").removeClass("ti-minus").addClass("ti-plus"),
            e.parent("li").siblings().not(e.parent("li").find("ul")).find(">a").find(".sub-menu-arrow").removeClass("rotate-in"),
            t.hasClass("rotate-in") ? setTimeout(function() {
                t.removeClass("ti-plus").addClass("ti-minus")
            }, 200) : t.removeClass("ti-minus").addClass("ti-plus"),
            !a.hasClass("horizontal-side-menu") && 1200 <= n.width() && setTimeout(function(e) {
                i(".navigation").getNiceScroll().resize()
            }, 300),
            !1
        }
    }),
    i("body.icon-side-menu .navigation").hover(function(e) {}, function(e) {
        e.stopPropagation(),
        i(".navigation ul").removeAttr("style"),
        i(".navigation ul li").not(".open").find(">a>.sub-menu-arrow").removeClass("rotate-in").removeClass("ti-minus").addClass("ti-plus")
    }),
    i(document).on("click", ".dropdown-menu", function(e) {
        e.stopPropagation()
    }),
    i("#exampleModal").on("show.bs.modal", function(e) {
        var t = i(e.relatedTarget).data("whatever")
          , n = i(this);
        n.find(".modal-title").text("New message to " + t),
        n.find(".modal-body input").val(t)
    }),
    i('[data-toggle="tooltip"]').tooltip({
        container: "body"
    }),
    i('[data-toggle="popover"]').popover(),
    i(".carousel").carousel(),
    992 <= n.width()) {
        i(".card-scroll").niceScroll(),
        i(".table-responsive").niceScroll(),
        i(".app-block .app-content .app-lists").niceScroll(),
        i(".app-block .app-sidebar .app-sidebar-menu").niceScroll(),
        i(".chat-block .chat-sidebar .chat-sidebar-content .tab-content .tab-pane").niceScroll();
        var l = i(".chat-block .chat-content .messages");
        l.length && (l.niceScroll({
            horizrailenabled: !1
        }),
        l.getNiceScroll(0).doScrollTop(l.get(0).scrollHeight, -1))
    }
    !a.hasClass("small-navigation") && !a.hasClass("hidden-navigation") && 992 <= n.width() && a.hasClass("sticky-navigation") && i(".navigation").niceScroll(),
    i(".dropdown-menu ul.list-group").niceScroll(),
    i(document).on("click", ".chat-block .chat-content .mobile-chat-close-btn a", function() {
        return i(".chat-block .chat-content").removeClass("mobile-open"),
        !1
    });
    var c = window.location.pathname.split("/").pop()
      , d = '<div class="theme-switcher open"> \n        <div class="theme-switcher-button"> \n            <i class="fa fa-cog"></i> \n        </div> \n        <div class="theme-switcher-panel"> \n            <div class="card"> \n                <div class="card-body"> \n                    <h6 class="card-title">Theme Switcher</h6> \n                    <div class="form-group mb-2"> \n                        <div class="custom-control custom-switch"> \n                            <input type="checkbox" class="custom-control-input" id="shadow-layout"> \n                            <label class="custom-control-label" for="shadow-layout">Shadow layout</label> \n                        </div> \n                    </div> \n                    <div class="form-group mb-2"> \n                        <div class="custom-control custom-switch"> \n                            <input type="checkbox" class="custom-control-input" ' + ("chat.html" === c || "inbox.html" === c || "app-todo.html" === c ? "disabled" : "") + ' id="sticky-header"> \n                            <label class="custom-control-label" for="sticky-header">Sticky header</label> \n                        </div> \n                    </div> \n                    <div class="form-group mb-2"> \n                        <div class="custom-control custom-switch"> \n                            <input type="checkbox" class="custom-control-input" id="light-header"> \n                            <label class="custom-control-label" for="light-header">Light header</label> \n                        </div> \n                    </div> \n                    <div class="form-group mb-2"> \n                        <div class="custom-control custom-switch"> \n                            <input type="checkbox" class="custom-control-input" ' + ("chat.html" === c || "inbox.html" === c || "app-todo.html" === c ? "disabled" : "") + ' id="sticky-footer"> \n                            <label class="custom-control-label" for="sticky-footer">Sticky footer</label> \n                        </div> \n                    </div> \n                </div> \n            </div> \n        </div> \n    </div>';
    i("body").append(d),
    i(document).on("click", '.theme-switcher input[type="checkbox"]', function() {
        var e = i(this).attr("id");
        "sticky-navigation" === e && (i(this).prop("checked") ? i(".navigation").niceScroll().resize() : i(".navigation").niceScroll().remove(),
        i("body").hasClass("small-navigation") && (i(".navigation .navigation-menu-body > ul > li").each(function() {
            i(this).find("> a").next("ul").length ? i(this).find(".dropdown-divider").remove() : i(this).find("> a").tooltip("dispose")
        }),
        i("body").removeClass("small-navigation"),
        i('.theme-switcher input[type="checkbox"][id="small-navigation"]').prop("checked", !1)),
        i("body").hasClass("hidden-navigation") && (CUSTOMİZABLE,
        i("body").removeClass("hidden-navigation"),
        i('.theme-switcher input[type="checkbox"][id="hidden-navigation"]').prop("checked", !1))),
        "small-navigation" === e && (i(this).prop("checked") ? i(".navigation .navigation-menu-body > ul > li").each(function() {
            i(this).find("> a").next("ul").length ? i(this).find("> a").next("ul").prepend('<li class="dropdown-divider">' + i(this).find("> a > span:not(.badge)").text() + "</li>") : (i(this).find("> a").attr("title", i(this).find("> a > span:not(.badge)").text()),
            i(this).find("> a").tooltip({
                placement: "right"
            }))
        }) : i(".navigation .navigation-menu-body > ul > li").each(function() {
            i(this).find("> a").next("ul").length ? i(this).find(".dropdown-divider").remove() : i(this).find("> a").tooltip("dispose")
        }),
        i("body").hasClass("sticky-navigation") && (i("body").removeClass("sticky-navigation"),
        i(".navigation").niceScroll().remove(),
        i('.theme-switcher input[type="checkbox"][id="sticky-navigation"]').prop("checked", !1)),
        i("body").hasClass("hidden-navigation") && (i("body").removeClass("hidden-navigation"),
        i('.theme-switcher input[type="checkbox"][id="hidden-navigation"]').prop("checked", !1))),
        "hidden-navigation" === e && (setTimeout(function() {
            i(".navigation").niceScroll().resize(),
            i(".app-block .app-content .app-lists").niceScroll().resize(),
            i(".app-block .app-sidebar .app-sidebar-menu").niceScroll().resize(),
            i(".chat-block .chat-sidebar .chat-sidebar-content .tab-content .tab-pane").niceScroll().resize()
        }, 200),
        i(this).prop("checked") || (i.removeOverlay(),
        i(".navigation").removeClass("open")),
        "chat.html" != c && "inbox.html" != c && "app-todo.html" != c && i("body").hasClass("sticky-navigation") && (i("body").removeClass("sticky-navigation"),
        i('.theme-switcher input[type="checkbox"][id="sticky-navigation"]').prop("checked", !1)),
        i("body").hasClass("small-navigation") && (i(".navigation .navigation-menu-body > ul > li").each(function() {
            i(this).find("> a").next("ul").length ? i(this).find(".dropdown-divider").remove() : i(this).find("> a").tooltip("dispose")
        }),
        i("body").removeClass("small-navigation"),
        i('.theme-switcher input[type="checkbox"][id="small-navigation"]').prop("checked", !1))),
        "dark" === e && i("body").hasClass("semi-dark") && (i("body").removeClass("semi-dark"),
        i('.theme-switcher input[type="checkbox"][id="semi-dark"]').prop("checked", !1)),
        "semi-dark" === e && i("body").hasClass("dark") && (i("body").removeClass("dark"),
        i('.theme-switcher input[type="checkbox"][id="dark"]').prop("checked", !1)),
        i("body").toggleClass(e)
    }),
    i(document).on("click", ".theme-switcher .theme-switcher-button", function() {
        i(".theme-switcher").toggleClass("open")
    })
}(jQuery);
