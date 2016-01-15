$(document).ready(function(){
	
});
$(function() {
	
	
	$("#login_sub").click(function(){
		$("#loginFrom").submit();
	});
	$('#ePwd').bind('keypress',function(event){
        if(event.keyCode == "13")    
        {
            alert('你输入的内容为：' + $('#ePwd').val());
        }
    });
	//回车事件
	/*$(document).keydown(function(event){
		var name = $("#eName").val();
		var pwd = $("#ePwd").val();
		if (event.keyCode == 13) {
			var name1 = $('#eName').textbox('getValue');
			var pwd1 = $("#ePwd").textbox('getValue');
			alert(name1+"--"+pwd1);
			$("#loginFrom").submit();// 处理事件
		} 
	})*/
})

/*function EnterPress(e){ //传入 event 
		var e = e || window.event; 
		if(e.keyCode == 13){ 
			alert("yes!");
		} 
	} */