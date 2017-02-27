$(document).ready(function(){
	$(".toplist_nav_item a").click(function(){
		$(".toplist_nav_item  a").removeClass('toplist_nav_link_current');
		$(this).addClass('toplist_nav_link_current');
		var title = $(".toplist_nav_link_current").text();
		$(".toplist_tit").text(title);
	});	

	$(".list_menu_icon_play").hover(function(){
		$(this).toggleClass("list_menu_icon_play list_menu_icon_play_active");
	},function(){
		$(this).toggleClass("list_menu_icon_play list_menu_icon_play_active");
	})
	
	$(".list_menu_icon_add").hover(function(){
		$(this).toggleClass("list_menu_icon_add list_menu_icon_add_active");
	},function(){
		$(this).toggleClass("list_menu_icon_add list_menu_icon_add_active ");
	})

	$(".list_menu_icon_share").hover(function(){
		$(this).toggleClass("list_menu_icon_share list_menu_icon_share_active");
	},function(){
		$(this).toggleClass("list_menu_icon_share list_menu_icon_share_active ");
	})

	$(".list_menu_icon_down").hover(function(){
		$(this).toggleClass("list_menu_icon_down list_menu_icon_down_active");
	},function(){
		$(this).toggleClass("list_menu_icon_down list_menu_icon_down_active ");
	})

	$(".songlist_list li").hover(function(){

		$(this).find(".mod_list_menu").show();
	},function(){
		$(this).find(".mod_list_menu").hide();
	});
})