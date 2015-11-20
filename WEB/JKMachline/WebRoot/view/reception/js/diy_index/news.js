function onLoadNewsInfo(){
	
	onloadMenu();     //加载首页菜单栏
	
	onLoadNewsTitle();// 加载新闻标题
	
	
}






/**
 * 
 * 加载新闻标题
 */
function onLoadNewsTitle(){
	$.ajax({                                                                     
		//url : "reception_menu",
		url : "indexAction_onLoadNewsTitle",
		dataType : "json",
		async: false,
		success : function(root) {
			var data = root.rows;
			for ( var i = 0; i < data.length; i++) {
				if(data[i].parentId==0 ){
					onetit+="<li><a href='"+data[i].url+"' class=''>"+data[i].name+"</a>";
					onetit+="<div style='display: none; overflow: hidden; height: auto; margin-top: 0px; margin-bottom: 0px; padding-top: 10px; padding-bottom: 15px;'>";
					var child = data[i].childMenu;
					for ( var j = 0; j < child.length; j++) {
						onetit+="<a href='"+child[j].url+"'>"+child[j].name+"</a>";
					}
					onetit+="</div></li><li class='split'><img src='view/reception/images/menu_split.gif'></li>";
			}
			}
			var menu = $("#menu");
			menu.empty();
			menu.append(onetit);
		}
	});
}
