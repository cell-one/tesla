var NB = (function($){
	var that = {};
	
	that.defOption = {
			bootbox : {
				o : {
					locale : "zh_CN",
					className : "modal_align"
				},
				n : {
			        dialog: "<div class='bootbox modal' tabindex='-1' role='dialog'><div class='modal-dialog'><div class='modal-content'><div class='modal-body'><div class='bootbox-body'></div></div></div></div></div>",
			        header: "<div class='modal-header bg-primary'><h4 class='modal-title'></h4></div>",
			        footer: "<div class='modal-footer'></div>",
			        closeButton: "<button type='button' class='bootbox-close-button close' data-dismiss='modal' aria-hidden='true'>&times;</button>",
			        form: "<form class='bootbox-form'></form>",
			        inputs: {
			            text: "<input class='bootbox-input bootbox-input-text form-control' autocomplete=off type=text />",
			            textarea: "<textarea class='bootbox-input bootbox-input-textarea form-control'></textarea>",
			            email: "<input class='bootbox-input bootbox-input-email form-control' autocomplete='off' type='email' />",
			            select: "<select class='bootbox-input bootbox-input-select form-control'></select>",
			            checkbox: "<div class='checkbox'><label><input class='bootbox-input bootbox-input-checkbox' type='checkbox' /></label></div>",
			            date: "<input class='bootbox-input bootbox-input-date form-control' autocomplete=off type='date' />",
			            time: "<input class='bootbox-input bootbox-input-time form-control' autocomplete=off type='time' />",
			            number: "<input class='bootbox-input bootbox-input-number form-control' autocomplete=off type='number' />",
			            password: "<input class='bootbox-input bootbox-input-password form-control' autocomplete='off' type='password' />"
			        }
			    }
			},
			sweet : {
		        title: "",
		        text: "",
		        type: "",
		        allowOutsideClick: !1,
		        showCancelButton: !1,
		        closeOnConfirm: !0,
		        closeOnCancel: !0,
		        confirmButtonText: "确定",
		        confirmButtonColor: "#66BB6A",
		        cancelButtonText: "取消",
		        imageUrl: null,
		        imageSize: null,
		        timer: null
			}
	};
	
	that.init = function(op){
		
		var option = $.extend({},that.defOption,op);
		
		bootbox.setDefaultOp(option.bootbox.o , option.bootbox.n);
		swal.setDefaults(option.sweet);
		
		return this;
	};
	
	/***
		{ 
		    size: 'small',
		    message: "Your message here…", 
		    callback: function(){  your callback code }
		}
		
		("Your message here…", function(){  your callback code  })
		
	*/
	that.alert = function(){
		var args = arguments;
		
		bootbox.alert.apply(this,args);
	};
	
	/***
	 * { 
		    size: 'small',
		    message: "Your message here…", 
		    callback: function(result){  your callback code }
		})
		
		confirm("Your message here…", function(result){  your callback code  })
	 */
	that.confirm = function(){
		var args = arguments;
		
		bootbox.confirm.apply(this,args);
	};
	
	/***
	 * ({ 
		    size: 'small',
		    message: "Your message here…", 
		    callback: function(result){ your callback code }
		})
		
		prompt("Your message here…", function(result){  your callback code  })
	 */
	that.prompt = function(){
		var args = arguments;
		
		bootbox.prompt.apply(this,args);
	};
	
	that.dialog = function(){
		var args = arguments;
		
		
		bootbox.dialog.apply(this,args);
	};
	
	
	/***
	 * {
	        title: "",
	        text: "",
	        type: "warning", "error", "success" and "info". You can also set it as "input" to
	        allowOutsideClick: !1,
	        showCancelButton: !1,
	        closeOnConfirm: !0,
	        closeOnCancel: !0,
	        confirmButtonText: "OK",
	        confirmButtonColor: "#AEDEF4",
	        cancelButtonText: "Cancel",
	        imageUrl: null,
	        imageSize: null,
	        timer: null
	    }
	    
	   ("Good job!", "You clicked the button!", "success")
	 */
	that.sweetAlert = function(){
		var args = arguments;
		
		swal.apply(window,args);
	};
	
	that.init();
	return that;
})(jQuery);

