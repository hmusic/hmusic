$().ready(function(){
	$(".toplist_nav_item a").click(function(){
		$(".toplist_nav_item  a").removeClass('toplist_nav_link_current');
		$(this).addClass('toplist_nav_link_current');
		var title = $(".toplist_nav_link_current").text();
		$(".toplist_tit").text(title);
	});
})