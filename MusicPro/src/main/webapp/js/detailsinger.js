$('#singerInfo').datagrid({    
	fitColumns:true,
	url:'singer/list',    
	pagination:true,
	pageList:[5,10,15,20,25],
	
	columns:[[    
			{
				  field:'picpath',
				  title:'照片',
				  width:120,
				  align:'center',
				  formatter:function(value,row,index){
				      var str = '<img src="'+(row.s_pic==null? "images/not_pic.jpg" : row.s_pic) +'">';
				      return str;
				  }},
	          {
	        	  field:'s_id',
	        	  title:'编号',
	        	  width:50,
	        	  order:'asc',
	        	  align:'center'}, 
	        	  
	          {
	        	  field:'s_name',
	        	  title:'歌手名',
	        	  width:80,
	        	  align:'center'},
	          {
		          field:'s_show',
		          title:'歌手信息',
		          width:120,
		          align:'center'},
		      {
			      field:'s_hot',
			      title:'是否热门',
			      width:40,
			      align:'center'},
			  {
				  field:'s_zm',
				  title:'查询类别',
				  width:50,
				  align:'center'},
			{
	        	  field:'operaror',
	        	  title:'操作',
	        	  width:50,
	        	  align:'center',
	        	formatter:function(value,row,index){
		        	var str='<a class="operatorBtn" href="javascript:void(0)" onClick="addSong('
			        		+ row.s_id +',\''+row.s_name+'\')">添加歌曲</a>';
			        	str+='<script>$(".operatorBtn").linkbutton();</script>';
	        		return str;
	        	}  
	          },
	          ]]    
});

function addSong(id,name){
	parent.openMP(id,name);
}

