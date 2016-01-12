function alertMsgBox(title,msg){
	$.messager.alert(title,msg);   
}
function page(type){
	$('#dg_'+type).datagrid("getPager").pagination({
		beforePageText:'当前第',
		afterPageText:'页/共{pages}页',
		displayMsg:'当前第 {from} - {to} 条数据   共 {total} 条数据',
	});
};
