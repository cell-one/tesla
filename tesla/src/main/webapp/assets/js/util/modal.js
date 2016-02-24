/**
 * sec封装
 * modal
 * ajax
 *
 * // 普通模态框
sec.bs.dialog({
    url      : '/url',
    title    : '标题'
});

// 点击确定按钮的回调
sec.bs.dialog({
    url     : '/url',
    title     : '标题'
},function(){
    alert('点击了确定！');
    return true;
});

// 页面加载完的回调
sec.bs.dialog({
    url     : 'url',
    title     : '',
    callback: function(){
        alert('加载完成！');
    }
});
 */

var sec={};


/**
 * ajax 封装
 */

sec.ajaxoptions = {
		url 		: '',
		data 		: {},
		type 		: 'post',
		dataType	: 'json',
		async 		: true,
		crossDomain	: false
	};

sec.ajaxopt = function(options){
		var opt = $.extend({}, sec.ajaxoptions);
		if(typeof options == 'string'){
			opt.url = options;
		}else{
			$.extend(opt, options);
		}

		return opt;
	};

sec.ajax=function(options, success, fail){
	if(options){
		var opt = sec.ajaxopt(options);
		if(typeof base != 'undefined') opt.url = base + opt.url;

		$.ajax(opt).done(function(obj){
			if(success) success(obj);
		}).fail(function(e){
			if(fail){
				fail(e);
			}else{
				alert('数据传输失败！');
			}
		});
	}
};

/**
* 事件绑定
*/
sec.on = function(obj, event, func){
	$(document).off(event, obj).on(event, obj, func);
};



/**
 * bootstrap modal封装
 */
sec.bs={};

sec.bs.modaloptions = {
		id		: 'bsmodal',
		url 	: '',
		fade	: 'fade',
		close	: true,
		title	: 'title',
		head	: true,
		foot	: true,
		btn		: true,
		okbtn	: '确定',
		qubtn	: '取消',
		msg		: 'msg',
		big		: false,
		show	: false,
		remote	: false,
		backdrop: 'static',
		keyboard: true,
		style	: '',
		mstyle	: '',
		hstyle:'bg-primary',
		callback: null
	};

	sec.bs.modalstr = function(opt){
		var start = '<div class="modal '+opt.fade+'" id="' + opt.id + '" tabindex="-1" role="dialog" aria-labelledby="bsmodaltitle" aria-hidden="true" style="position:fixed;top:20px;'+opt.style+'">';
		if(opt.big){
			start += '<div class="modal-dialog modal-lg" style="'+opt.mstyle+'"><div class="modal-content">';
		}else{
			start += '<div class="modal-dialog" style="'+opt.mstyle+'"><div class="modal-content">';
		}
		var end = '</div></div></div>';

		var head = '';
		if(opt.head){
			head += '<div class="modal-header '+opt.hstyle+'">';
			if(opt.close){
				head += '<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true"><i class="icon-cross2"></i></span><span class="sr-only">Close</span></button>';
			}
			head += '<h3 class="modal-title" id="bsmodaltitle">'+opt.title+'</h3></div>';
		}

		var body = '<div class="modal-body"><p><h4>'+opt.msg+'</h4></p></div>';

		var foot = '';
		if(opt.foot){
			foot += '<div class="modal-footer"><button type="button" class="btn btn-primary bsok">'+opt.okbtn+'</button>';
			if(opt.btn){
				foot += '<button type="button" class="btn btn-default bscancel">'+opt.qubtn+'</button>';
			}
			foot += '</div>';
		}

		return start + head + body + foot + end;
	};


	sec.bs.dialog = function(options, func){
		// options
		var opt = $.extend({}, sec.bs.modaloptions, options);
		opt.big = true;

		// append
		$('body').append(sec.bs.modalstr(opt));

		// ajax page
		sec.ajax({
			url:options.url,
			dataType:'html'
		}, function(html){
			$('#' + opt.id + ' div.modal-body').empty().append(html);
			if(options.callback) options.callback();
		});

		// init
		var $modal = $('#' + opt.id);
		$modal.modal(opt);

		// bind
		sec.on('button.bsok', 'click', function(){
			var flag = true;
			if(func){
				flag = func();
			}

			if(flag){
				$modal.modal('hide');
			}
		});
		sec.on('button.bscancel', 'click', function(){
			$modal.modal('hide');
		});
		sec.on('#' + opt.id, 'hidden.bs.modal', function(){
			$modal.remove();
		});

		// show
		$modal.modal('show');
	};
