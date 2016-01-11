$(document).ready(function(){
	$("#login_sub").click(function(){
		$("#loginFrom").submit();
	});
});
/*回车事件*/
$(function() {
	$(document).keydown(function(event){
		var name = $("#eName").val();
		var pwd = $("#ePwd").val();
		alert(name+"---"+pwd);
		if (event.keyCode == 13 && name!="" && pwd!=""  ) {
			$("#loginFrom").submit();// 处理事件
		}else if(event.keyCode==13){
			alert("请输入帐号和密码！");
		} 
	})
})
