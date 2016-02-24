/* ------------------------------------------------------------------------------
*
*  # Sticky sidebar with custom scrollbar
*
*  Specific JS code additions for layout_sidebar_sticky_custom.html page
*
*  Version: 1.0
*  Latest update: Aug 1, 2015
*
* ---------------------------------------------------------------------------- */

$(function() {


    // Mini sidebar
    // -------------------------

    // Setup
    function miniSidebar() {
        if ($('body').hasClass('sidebar-xs')) {
            $('.sidebar-main.sidebar-fixed .sidebar-content').on('mouseenter', function () {
                if ($('body').hasClass('sidebar-xs')) {

                    // Expand fixed navbar
                    $('body').removeClass('sidebar-xs').addClass('sidebar-fixed-expanded');
                }
            }).on('mouseleave', function () {
                if ($('body').hasClass('sidebar-fixed-expanded')) {

                    // Collapse fixed navbar
                    $('body').removeClass('sidebar-fixed-expanded').addClass('sidebar-xs');
                }
            });
        }
    }

    // Initialize
    miniSidebar();


    // Toggle mini sidebar
    $('.sidebar-main-toggle').on('click', function (e) {

        // Initialize mini sidebar 
        miniSidebar();
    });


    // Nice scroll
    // ------------------------------

	// Setup
	function initScroll() {
	    $(".sidebar-fixed .sidebar-content").niceScroll({
	        mousescrollstep: 100,
	        cursorcolor: '#ccc',
	        cursorborder: '',
	        cursorwidth: 3,
	        hidecursordelay: 100,
	        autohidemode: 'scroll',
	        horizrailenabled: false,
	        preservenativescrolling: false,
	        railpadding: {
	        	right: 0.5,
	        	top: 1.5,
	        	bottom: 1.5
	        }
	    });
	}

	// Remove
	function removeScroll() {
		$(".sidebar-fixed .sidebar-content").getNiceScroll().remove();
		$(".sidebar-fixed .sidebar-content").removeAttr('style').removeAttr('tabindex');
	}

    // Initialize
    initScroll();



    // Remove scrollbar on mobile
    $(window).on('resize', function() {
        setTimeout(function() {            
            if($(window).width() <= 768) {

                // Remove nicescroll on mobiles
                removeScroll();
            }
            else {

                // Init scrollbar
                initScroll();
            }
        }, 100);
    }).resize();

});
function invoke(str){
	if(loading()){
		$('#content').load(str+"?t="+new Date().getTime(),function(response,status,xhr){
			
		});
		window.setTimeout(function () {
			$(dark_6).unblock();
	    }, 500);
		window.scrollTo(0,0);
	}
}

function invokes(e,str){
	if(loading()){
		$('#content').load(str+"?t="+new Date().getTime(),function(response,status,xhr){
			var list=$(".navigation-main").children();
			for(var ls=0;ls<list.length;ls++){
				if($(list[ls]).hasClass("active")||$(list[ls]).find(".active").hasClass("active")){
					$(list[ls]).removeClass("active"); 
					$(list[ls]).find(".active").removeClass("active");
					$(list[ls]).find("ul[style]").attr("style","display: none;");
				}
			}
			$(e).parent().addClass("active");
			if($(e).parent().parent(".hidden-ul").length>0){
				$(e).parent().parent().parent().addClass("active");
				$(e).parent().parent().parent().find("ul").attr("style","display: block;");
			}
		});
		window.setTimeout(function () {
			$(dark_6).unblock();
	    }, 1000);
		window.scrollTo(0,0);
	}
}
var dark_6 = $("html");
function loading(){
	$(dark_6).block({
        message: '<i class="icon-spinner9 spinner" style="font-size: 30px;"></i>',
        overlayCSS: {
            backgroundColor: '#1B2024', 
            opacity: 0.9,
            cursor: 'wait'
        },
        fadeIn: 0,
        fadeOut: 500,
        css: {
            border: 0,
            padding: 0,
            backgroundColor: 'none',
            color: '#fff'
        },
        onUnblock: function() { 
        	if($(".blockOverlay")){
	    		 $(".blockOverlay").next().remove();
	    		 $(".blockOverlay").remove();
	    	 }
        }
    });
	var as=$("a.has-ul");
	for(var i=0;i<as.length;i++){
		$(as[i]).unbind();
	} 
	$(".hidden-xs").unbind(); 
	return true; 
}
function loads(){
	$(dark_6).block({
        message: '<i class="icon-spinner9 spinner" style="font-size: 30px;"></i>',
        overlayCSS: {
            backgroundColor: '#1B2024', 
            opacity: 0.9,
            cursor: 'wait'
        },
        fadeIn: 0,
        fadeOut: 1000,
        css: {
            border: 0,
            padding: 0,
            backgroundColor: 'none',
            color: '#fff'
        }
    });
	return true; 
}
function unloading(){
	$(dark_6).unblock();
}
function msg(e){
	show_stack_bottom_left('primary',e); 
//    new PNotify({
//        title: '提示',
//        text: e,
//        icon: 'icon-info22',
//        type: 'success'
//    });
}

function msgs(e){
	var notice = new PNotify({
        title: '温馨提示',
        text: e,
        addclass: 'bg-success',
        hide: true,
        buttons: {
            closer: false,
            sticker: false
        }
    });
    notice.get().click(function() {
        notice.remove();
    });  
}
function msrule(e){
	var notice = new PNotify({
        title: '面试规则和要求',
        text: e,
        addclass: 'bg-info',
        hide: false,
        buttons: {
            closer: false,
            sticker: false
        }
    });
    notice.get().click(function() {
        notice.remove();
    });  
}
var stack_bottom_left = {"dir1": "right", "dir2": "up", "push": "top"};
function show_stack_bottom_left(type,text) {
    var opts = {
        title: "提示",
        text: text,
        addclass: "stack-bottom-left bg-primary",
        stack: stack_bottom_left
    };
    switch (type) {
        case 'error':
        opts.title = "Oh No";
        opts.text = "Watch out for that water tower!";
        opts.addclass = "stack-bottom-left bg-danger";
        opts.type = "error";
        break;

        case 'info':
        opts.title = "Breaking News";
        opts.text = "Have you met Ted?";
        opts.addclass = "stack-bottom-left bg-info";
        opts.type = "info";
        break;

        case 'success':
        opts.title = "Good News Everyone";
        opts.text = "I've invented a device that bites shiny metal asses.";
        opts.addclass = "stack-bottom-left bg-success";
        opts.type = "success";
        break;
    }
    new PNotify(opts);
}