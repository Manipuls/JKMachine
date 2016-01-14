$(document).ready(function(){
	
});
$(function() {
	
	
	$("#login_sub").click(function(){
		$("#loginFrom").submit();
	});
	
	/*回车事件
	$("#ePwd").keydown(function(event){
		var name = $("#eName").val();
		var pwd = $("#ePwd").val();
		if (event.keyCode == 13 && name!="" && pwd!=""  ) {
			alert(name+"--"+pwd);
			$("#loginFrom").submit();// 处理事件
		}else if(event.keyCode==13){
			alert("请输入帐号和密码！");
		} 
	})*/
})

/*function EnterPress(e){ //传入 event 
		var e = e || window.event; 
		if(e.keyCode == 13){ 
			alert("yes!");
		} 
	} */