$('#muserInfo').datagrid({    
	//width:960,
	fitColumns:true,
	url:'muser/list',    
	pagination:true,
	pageList:[5,10,15,20,25],
	columns:[[    
			{
				  field:'picpath',
				  title:'照片',
				  width:160,
				  height:60,
				  align:'center',
				  formatter:function(value,row,index){
				      var str = '<img src="'+(row.upic==null? "images/not_pic.jpg" : row.upic) +'">';
				      return str;
				  }},
	          {
	        	  field:'usid',
	        	  title:'编号',
	        	  width:50,
	        	  order:'asc',
	        	  align:'center'}, 
	        	  
	          {
	        	  field:'uname',
	        	  title:'用户名',
	        	  width:80,
	        	  align:'center'},
	          {
		          field:'uaddr',
		          title:'住址',
		          width:120,
		          align:'center'},
		      {
			      field:'utel',
			      title:'电话',
			      width:100,
			      align:'center'},
			  {
				  field:'usex',
				  title:'性别',
				  width:50,
				  align:'center'},
			 {
				  field:'ubri',
				  title:'生日',
				  width:100,
				  align:'center'},
			{
					  field:'unote',
					  title:'签名',
					  width:150,
					  align:'center'},
	          {
	        	  field:'operaror',
	        	  title:'操作',
	        	  width:50,
	        	  align:'center',
	        	formatter:function(value,row,index){
		        	var str='<a class="operatorBtn" href="javascript:void(0)" onClick="stopUsers('
			        		+ row.usid +')">禁用</a>';
			        	str+='<script>$(".operatorBtn").linkbutton();</script>';
	        		return str;
	        	}  
	          },
	          ]]    
});


function stopUsers(id){
	$.messager.confirm('禁用用户','是否确定禁用此用户？',function(r){
		if(r){
			$.get("muser/archive?usid=" + id,function(data){
				if(data){
					 $("#muserInfo").datagrid("reload");
				}
				 $.messager.show({
						title:'禁用用户',
						msg:data ? "禁用成功..." : "禁用失败！！！",
						showType:'show',
						style:{
							top:document.body.scrollTop+document.documentElement.scrollTop+40,
						}
					});
			},"json");
		}
	})
}