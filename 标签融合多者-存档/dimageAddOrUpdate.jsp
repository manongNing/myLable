<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../tags.jsp" %>
<html>
<head>
<script src="<%=request.getContextPath()%>/js/tag.js"> </script>
<script src="<%=request.getContextPath()%>/js/jquery.fileupload.js"> </script>
<script src="<%=request.getContextPath()%>/js/layer.js"> </script>
<link rel="stylesheet" href="../css/dimage.css" />
<link rel="stylesheet" href="../css/css/font-awesome.min.css" />
<link rel="stylesheet" href="../css/css/font-awesome-animation.css" />
<link rel="stylesheet" href="../css/main.css" >
<link rel="stylesheet" href="../css/index.css" />

<style>
		/*自定义验证错误信息显示的位置开始 */
		.rightinput{
			position: relative;
		}
		#patients-form label {
			position: absolute;
			left: -38%;
			top: 16%;
			color: red;
			
		}
		.messagetext{
		 width:25px;
		 height:25px;
		 float:right;
		 position:relative;
		 margin-left:5px;
		}
		.wenhao{
		 width:20px;
		 height:20px;
		 float:right;
		 background:gainsboro;
		 position:relative;
		 border-radius:50px;
		 margin-top:9px;
		 text-align:center;
		 line-height:20px;
		 font-size:13px;
		 cursor: pointer;
		}
		.messagetext:hover .modeltextS{display:block;}
		.lableCon{
		width:auto;
		height:38px;
		display:inline-block;
		}
		.modeltextS{width:200px;height:300px;position:absolute;top:0;left:25px;z-index:9999;display:none;}
		.textSS{overflow-y:auto;font-size:12px;padding:10px;overflow-y:auto;width:95%;height:300px;margin-left:2.5%;margin-top:2.5%;
		background:rgba(0,0,0,0.8);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#19000000,endColorstr=#19000000);
		line-height:18px;color:white;
		}
		.ptext{font-size:12px;color:white;}
		
		
		/*自定义验证错误信息显示的位置结束 */
		body,html{height:inherit !important;margin-bottom:40px;overflow-x: inherit !important;}
	</style>
<link href="../css/doctor/guanli.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/js/layer.js"> </script>
</head>

<body style="">

   

	 <div class="creatbldivS" style="display: block !important;">
      	 <div class="creatback cr" onclick="returnList();"><span>返回</span></div>
      	 <div class="creatcontent">
      	 	<div class="titlecerbl"><span>影像管理</span></div>
      	 	
      	 	<div class="contetshuju1">
	
	   <form id="form-addOrUpdate"  class="form-horizontal"  style="position:relative;margin-top:3%;margin-right:5%" method="post" enctype="multipart/form-data">
             
             <!-- 修改002开始   --> 
            
            <div class="form-group" style="display:none;">
				<label class="col-sm-2 control-label">ceasid</label>
				<div class="col-sm-6">
					 <input type="text" name="ceasid" id="ceasid" placeholder="ceasid"/>
				</div>
			</div>
			
			 <div class="form-group" style="display:none;">
				<label class="col-sm-2 control-label">recordno</label>
				<div class="col-sm-6">
					 <input type="text" name="recordno" id="recordno" placeholder="recordno"/>
				</div>
			</div>
			
		
			
			<!-- imagename  &&  imageurl -->
			
	        <div class="form-group" id="firstimg-div">
		 		<div class="leftpart"><p class="namespan sange">影像文件:</p><span class="xin">*</span></div>
			
		 		<div class="col-sm-8">
		 		<div id="headimg" >
		 		
			    <input type="text" id="imageorgname01" name="imageorgname01"  style="width:300px;display:inline-block;" disabled  placeholder="文件名"/>
			    <input type="text" id="imageorgname" name="imageorgname"  style="display:none;" />
			    <input type="text" id="imagesize" name="imagesize"  style="display:none;" />
			    <input type="text" id="imageurl" name="imageurl"  style="display:none;" />
			   
			    <input type="file" id="imgfile"  name="file" style="display:none;" />
			    <!-- 弹出层说明框 -->
			    <div class="lableCon">
			    <label for="imgfile"  id="browse"  class='layui-btn layui-btn-normal' style="margin-left:30px;font-weight:normal;border-radius: 6px;">+ 选择文件</label> 
			    <div class="messagetext">
			    <div class="wenhao">?</div>
			    <div class="modeltextS">
			     <div class="textSS">
			      <p class="ptext">①设备选择:推荐使用螺距小的多排螺旋CT，不推荐使用传统的级进式CT或单排螺旋CT；</p>
			      <p class="ptext">②扫描范围：以能够满足临床需要为准；</p>
			      <p class="ptext">③扫描间距：推荐0.625mm，不推荐＞2mm；</p>
			      <p class="ptext">④CT扫描参数设定：依据临床需要；</p>
			      <p class="ptext">⑤分辨率:推荐像素矩阵为512x512、像素尺寸為0.5 mm x 0.5mm的CT设备；</p>
			      <p class="ptext">⑥扫描体位：扫描体位摆放正确对以后进行三维设计、测量有益处。CT扫描摆放肢体建议使肢体长轴与扫描方面一致；如果肢体存在外固定或者骨关节畸形时，建议减少两者的成角角度。建议使双侧肢体摆放对称；按照解剖学姿势摆放：双上肢伸直附于体侧、手心朝前和双下肢靠拢、足尖朝前;</p>
			      <p class="ptext">⑦造影剂：根据临床需要可以选择使用；</p>
			      <p class="ptext">⑧金属异物：CT扫描过程中会产生伪影，对影像精确性将产生误差。</p>
			     </div>
			    </div>
			    </div>
			    </div>
			    
			    <!-- 下面两个按钮保留，为断点续传做准备  -->
			   <!--  <label id="toStart" class='layui-btn layui-btn-normal' style="margin-left:30px;font-weight:normal;border-radius: 6px;">开始</label> 
			    <label id="toStop" class='layui-btn layui-btn-normal' style="margin-left:30px;font-weight:normal;border-radius: 6px;">暂停一下</label> 
			     -->
			    
			    
			    <label state="0" id="uploadFile" onclick="uploadFile()" style="display:none;"    class='layui-btn layui-btn-normal'  style="margin-left:8px;font-weight:normal;border-radius: 6px;">▲ 开始上传</label>
				
				
				<div style="width: 45%;" >
				<div id="progress"  style="display:none;width:90%;float:left">
			       <div class="bar" style="width: 0%;"> <span id="percent" style="color:#fff;"> </span> </span></div>
			    </div>
		         <i id="quan" class="fa fa-spinner faa-spin animated" aria-hidden="true" style="line-height: 60px;display: none;float: right;font-size:24px"></i>
		        </div> 
			     
				</div>

		 		</div>
			</div>
                 
           
           
            <!-- imagelabels --> 
            <!--imagelabels表 -->
          
            
          <div class="form-group" >
            <div class="leftpart"><p class="namespan sange">影像标签:</p><span class="xin">*</span></div>
			
				<div class="col-sm-6">
					  <jsp:include page="label.jsp">
					  <jsp:param  name="jump" value="<%=request.getParameter(\"jump\")%>"/> 
					  <jsp:param  name="id" value="<%=request.getParameter(\"id\")%>"/> 
					
					  </jsp:include>
				</div>
			</div>
            
            
           <!--imagetypecode表 -->
           <div class="">
           	<div class="leftpart"><p class="namespan sange">影像类型:</p><span class="xin">*</span></div>
			
			
				<div class="">
				
				<select class="select01"  name="imagetypecode" id="imagetypecode" >
  					<option value="-1">---请选择---</option>
  				</select>
				
				</div>
			</div>
            
            <input type="hidden" id="status" name="status" />
			<input type="hidden" id="failreason" name="failreason" />
			
			<!--usercode -->
			<div class="form-group" style="display:none;">
				<label class="col-sm-2 control-label">createtor</label>
				<div class="col-sm-6">
					<input type="text" name="createtor" id="createtor" placeholder="createtor"/>
				</div>
			</div>
                
           
          <input id="selectedid" name="imageid" type="hidden" />   <!-- 存储已选项ID -->
          <input id="newlabels" name="newlabels" type="hidden" /> 
           <!-- 修改002结束   --> 
           
        </form>		
			
	
	</div>
	
	
	
        
	
		<!--提交-->
			<div class="tijiaodiv">
				<div   class="submit" onclick="saveBtn();" id="btn_submit"><span>保存</span></div>
				<div   class="submit" onclick="updateMenuNode();" id="btn_submit2"><span>修改保存</span></div>
			</div>
			
			
			
		
		
    </div>
    
    	
    
</div>
    

    
    
    
    
<script type="text/javascript">

/* var url = window.location.hostname;  //当前主机IP或域名

Offline.options = {
    checks:{xhr: {url: 'http://220.165.3.105:9000/doctorcustomer/duserRestController/adminmain'}},
    //checks:{xhr: {url: 'http://'+url+':9000/doctorcustomer/duserRestController/adminmain'}},
}; */


//Offline.check();
/* var myVar = setInterval(function(){ Offline.check();}, 3000);   //每隔3秒检查一次网络

Offline.on("up", function() {
    tips('网络已连接');
  });
Offline.on("down", function() {
	tips('网络已断开');
  }); */




var jump;
var id;

var flag;

var ceasid,recordno,createtor;

var usercode='${usercode}';

/* $("#form-addOrUpdate div").each(function(){
	$(this).addClass("form-group");
}); */
$("#form-addOrUpdate input").each(function(){
	$(this).addClass("form-control");
});



$(function(){
	
	$("#uploadFile").attr("state","0");
	//form验证一次，否则第一次打开没有验证效果
    formValidator();
	
	get_type();  //初始化影像类型     如果是编辑，则接着初始化所有input
	
	
	jump = $.query.get('jump');
	id = $.query.get('id');
	flag = $.query.get('flag');
	
	var Request = new Object();
    Request = GetRequest();
    ceasid = Request['ceasid'];
    recordno = Request['recordno'];
    createtor = Request['createtor'];
	//alert(ceasid+recordno+createtor);
	 
	
    if(jump == '0'){//新增
		clearForm();
        //这种写法为了兼容IE
		document.getElementById("btn_submit").style.display="block"; 
		document.getElementById("btn_submit2").style.display="none"; 
		
		$("#ceasid").val(ceasid);
		$("#recordno").val(recordno);
		$("#createtor").val(createtor);
		
		vm.initPage();    //下个页面标签库初始化  。为了满足“每个人只能看到自己新增的标签”的功能。否则直接在 label.jsp 的  function 里面初始化
		
	}else{//编辑     get_type() 中  初始化了部分 input , 其余input在下个页面初始化
		document.getElementById("btn_submit2").style.display="block"; 
		document.getElementById("btn_submit").style.display="none"; 
	  
		//编辑的  vm.initPage() 在本页面函数  initInput() 里，否则取不到 createtor 的值，过滤不了标签库
	}
	 
    
    
    //实例化一个plupload上传对象
    var uploader = new plupload.Uploader({
        browse_button : 'browse', //触发文件选择对话框的按钮，为那个元素id
        url: '${pageContext.request.contextPath}/dimage/plupload',  //服务器端的上传页面地址
        chunk_size:20*1024*1024,    //每20M为一块，防止文件过大导致内存溢出
        flash_swf_url : 'js/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
        silverlight_xap_url : 'js/Moxie.xap' //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数
    });    

    //在实例对象上调用init()方法进行初始化
    uploader.init();

    //绑定各种事件，并在事件监听函数中做你想做的事
    //$("#uploadFile").attr("state"):  0.未上传文件     1.文件类型错误     2.上传进行中      3.上传成功     4.上传失败
    uploader.bind('FilesAdded',function(uploader,files){
    	 //每个事件监听函数都会传入一些很有用的参数，
        //我们可以利用这些参数提供的信息来做比如更新UI，提示上传进度等操作
    	var filename = files[0].name;
    	var index=filename.lastIndexOf('.');
		var type=filename.substr(index+1,filename.length);
		if(type!="rar"&&type!="zip") {
			tips("只能上传rar或zip格式的文件<br/>请重新选择！");
            $("#uploadFile").attr("state","1");
            uploader.splice();//清空上传队列
            return ;
        }
		$("#imageorgname01").val(filename);
		$("#imageorgname").val(filename); 
		$("#imagesize").val(files[0].size);
		
		  //隐藏或显示页面元素
		$('#progress .bar').css( 
		  'width', '0%'
		);
		$('#percent').html('0%');
		
		uploader.start();
    	
       
    });
    uploader.bind('UploadProgress',function(uploader,file){
    	$("#uploadFile").attr("state","2");
		
	/* 	layer.msg('上传中，请等待！',{
			icon: 16,
			shade: [0.3,'#A5CFF5'],
			time:false   //取消默认情况下的自动关闭
		});  */
		
		
		$('#progress').show();
		$('#quan').show();
		//var progress = parseInt(file.loaded / file.size * 100, 10); 
		var progress = file.percent;
		 
		  $('#progress .bar').css( 
		   'width',progress + '%'
		  ); 
		  $('#percent').html(+progress+'%'); 
    });
    
  
    uploader.bind('FileUploaded',function(uploader,files,res){
    	layer.closeAll();
    	retObject = eval("(" + res.response + ")");  
    	var success = retObject.success;
    	var path = retObject.data;
    	var message = retObject.message;
        $('#quan').hide();
        //alert(path);
        if(success == true){
        	tips(message);
        	$("#uploadFile").attr("state","3");
    	    var index = path.indexOf("/upload");
    		var path01= path.substring(index);
    		$('#imageurl').val(path01); 
    		$('#status').val('1');
        }
        else{
        	$('#progress .bar').css( 
  				  'width', '0%'
  				);
  			$('#percent').html('0%');
  			
        	tips("上传失败,请稍后再试");
        	$("#uploadFile").attr("state","4");
    		$('#status').val('0');
    		$('#failreason').val(message);
    	}
        uploader.splice();//清空上传队列
		
    });
    
    uploader.bind('Error',function(uploader,errObject){
    	$('#quan').hide();
    	$("#uploadFile").attr("state","4");
		tips(errObject.message);
		$('#status').val('0');
		$('#failreason').val(errObject.message);
		uploader.splice();//清空上传队列
    }); 
    

    //最后给"开始上传"按钮注册事件<p></p>
    $("#toStart").on('click', function () {
        uploader.start();
    });
    $("#toStop").on('click', function () {
        uploader.stop();
    });

    
    
    
    /*********************************无用*****************************************************/
	 $('#XXX').fileupload({
		    url: '${pageContext.request.contextPath}/dimage/uploadFile', 
			Type : 'POST',//请求方式 ，可以选择POST，PUT或者PATCH,默认POST
			dataType : 'json',//服务器返回的数据类型
			autoUpload : false,
			maxNumberOfFiles : 1//最大上传文件数目
	 })	
		//图片添加完成后触发的事件              
		//uploadFile  state:  0.未上传文件     1.文件类型错误     2.上传进行中      3.上传成功     4.上传失败
		.on("fileuploadadd", function(e, data) {
			jqXHR = data.submit();	
		})
		
		
	/**************************************************************************************/
	
    })  //function结束 
    
    
	
function tips(content) {  
	layer.open({  			
		type: 1 ,
		offset: 'auto', //具体配置参考：offset参数项
		title : '提示',
		content: '<div style="padding: 20px 80px;">'+content+'</div>',
		btn: '确定',
		btnAlign: 'c', //按钮居中
		yes:layer.closeAll()
   }); 
}

function GetRequest() {           //这种方法获取参数，有效避免了参数前面有0时，0被去掉的情况
	   var url = location.search; //获取url中"?"符后的字串   
	   var theRequest = new Object();   
	   if (url.indexOf("?") != -1) {   
	      var str = url.substr(1);   
	      strs = str.split("&");   
	      for(var i = 0; i < strs.length; i ++) {   
	         theRequest[strs[i].split("=")[0]]=unescape(strs[i].split("=")[1]);   
	      }   
	   }   
	   return theRequest;   
}   
    

function get_type() {
		
		$.ajax({
			url: "../dimagetype/queryAllDimagetype", //获取json数据
			 data:{
	        	    "rows":500,
			        "page":1
	          },
			type: "post",
			dataType: "json",
			success: function(data) {
			    for(var i = 0; i < data.rows.length; i++) {
					var id = data.rows[i].imagetypecode;
					var name = data.rows[i].imagetypename;
					var opt = "<option value='" + id + "'>" + name + "</option>";
					$("#imagetypecode").append(opt);
				}
			    if(jump!='0'){
			    	initInput();
			    }
			    
			},
			error: function() {
				tips("获取类型异常，请稍后再试！");
			}
		});
		
}

function initInput() {
	
	 $.ajax({
         url:"${pageContext.request.contextPath}/dimage/getOneById",
         type:"post",
         data:{id:id},
         //async: false,  //设置成同步   for单线程    ajax多线程   必须同步，否则外面访问不到里面的变量
         
         success:function(data)
         {
        	  $("#form-addOrUpdate input").each(function(){
 		    	 var name = $(this).attr('name');
 		    	 $(this).val(data.data[''+name+'']);
 		 	 });
        	  $("#imageorgname01").val($("#imageorgname").val());
        	  $("#imagetypecode").val(data.data.imagetypecode);
        	  $("#status").val(data.data.status);
        	  
        	  vm.initPage();   //下个页面初始化
 	     }
	  });
	
}


//清空新增修改对话框部分
function clearForm(){
	$("#form-addOrUpdate input").each(function(){
		$(this).val('');
	});
	$("#form-addOrUpdate select").each(function(){
		$(this).val('');
	});
}


function checkNull(){
	 var state = $("#uploadFile").attr("state");
	 
	  if($('#imageurl').val().length == 0)
	   {
		   //0.未上传文件     1.文件类型错误     2.上传进行中
		   
		   if(state == 0){
			   tips("请上传影像文件！");
		       return false;
		   }
		   else if(state == 2){
			   tips("请等待文件上传完成！");
		       return false;
		   }
		   
	   }
	   else if(state == 2){
		   tips("请等待文件上传完成！");
	       return false;
	   }
	   else if($('#tagValue').children("li").length == 0)
	   {
		   tips("请添加标签！");
		   return false;
	   }
	   else if($('#imagetypecode').val() == -1)
	   {
		   tips("请选择影像类型！");
		   return false;
	   }
	   else
		   return true;
		   
}

/*新增*/
function saveBtn(){
	
/* 	Offline.check();
	if(Offline.state == 'down'){
		tips('网络异常，请稍后再试');
		return;
	}
	 */
	 //alert(document.getElementById("ceasid").value());
	
	var bv = $('#form-addOrUpdate').data('bootstrapValidator');
    bv.validate();
    
    if(bv.isValid()){ 
    	
    //第1步  判断  	
    if(!checkNull()){
		  return;
	}
   
 	//第2步  检查是否有新增的自定义标签，如果有，先保存新增的自定义标签  	
	if(!selfLabel())
		return;
 	
	else{         //多个ajax请求，由于ajax异步的特性，必须一个请求完成之后再执行另一个请求，【ajax改为同步也有错】
		          //即：把下一个求情写在success里面.否则在没有 alert情况下会出错
		
	//第3步  删除之前记录
	  $.ajax({
	        url:"${pageContext.request.contextPath}/dimage/deleteByCeasid",
	        data: {ids:$("#ceasid").val()},
	        type: 'post',
	        dataType:"json",
	        success: function (data) { //返回json结果
	        	
	        	//第4步  保存  
	    		var arr = $('#form-addOrUpdate').serialize();
	    		//alert(arr);
	    	    $.ajax({    
	    	 			url:"${pageContext.request.contextPath}/dimage/addDimage",
	    	 			data:arr,
	    	 			type:"post",
	    	 			dataType:"json",
	    	 			success:function(data){
	    	 				tips(data.message);
	    	 				
	    	 				 //第5步    标签关联的label个数加1
	    	 			     
	    	 			     $.ajax({    
	    	 						url:"${pageContext.request.contextPath}/dimagelabel/addImgnumBycodes",
	    	 						data:{codes:$("#imagelabels").val()},
	    	 						type:"post",
	    	 						dataType:"json",
	    	 						
	    	 						success:function(data){
	    	 							
	    	 							 //第6步    更新病历表
	    	 							 $.ajax({   
		 
											url:"${pageContext.request.contextPath}/patientsRest/saveOrUpdateCases",
											data:{
													ceasid:$("#ceasid").val(),
													recordno:$("#recordno").val(),
													imagestatus:$("#status").val(),
													modelstatus:'0'
												 },
											type:"post",
											dataType:"json",
											
											success:function(data){
												 //最后，跳转页面
			    	 						     window.history.go(-1);
											},
											error:function(){
												tips("更新病历表异常，请稍后再试！");
												return;
											}
											
									     });
	    	 							
	    	 						   
	    	 						    
	    	 							/*  if(flag==1){             //跳转列表
	    	 							    window.setTimeout("window.location='../patientsRest/portalCasesJumpPage'",2000); 
	    	 							 }
	    	 							 else{                   //跳转详情
	    	 								 window.history.go(-1);
	    	 							 }
	    	 						     */
	    	 							
	    	 						},
	    	 						error:function(){
	    	 							tips("添加标签关联数目异常，请稍后再试！");
	    	 							return;
	    	 						}
	    	 						
	    	 				}); 	
	    	 				
	    	 				
	    	 			},
	    	 			error:function(){
	    	 				tips(data.message);
	    	 				return;
	    	 			}
	    	 			
	    	 	});
	    	  
	          
	        	
	        	
	        	
	        	
	  		},
			error:function(data){
				tips("删除已有记录异常，请稍后再试！");
				return;
			}
	  });          
		          
		
	
	} //else 结束
	
	
	
 
} 
    
}    	 
 

 
function updateMenuNode(){
	/* 
	Offline.check();
	if(Offline.state == 'down'){
		tips('网络异常，请稍后再试');
		return;
	} */
	
    var bv = $('#form-addOrUpdate').data('bootstrapValidator');
    bv.validate();
    
    if(bv.isValid()){ 
    
    //第1步  判断
    if(!checkNull()){
    	return; 
   	}
   
  
	//第2步  更新标签   包含了新增自定义,加1减1	  
    if(!updateLable())
    	return;
    else{
    	
    	   
        //第3步  保存 	     
    	var arr = $('#form-addOrUpdate').serialize();
        $.ajax({    
     			url:"${pageContext.request.contextPath}/dimage/updateDimage",
     			data:arr,
     			type:"post",
     			dataType:"json",
     			
     			success:function(data){
     				tips(data.message);
     				
     				 //第4步    更新病历表
					 $.ajax({   

						url:"${pageContext.request.contextPath}/patientsRest/saveOrUpdateCases",
						data:{
								ceasid:$("#ceasid").val(),
								recordno:$("#recordno").val(),
								imagestatus:$("#status").val(),
								modelstatus:'0'
							},
						type:"post",
						dataType:"json",
						
						success:function(data){
							 //最后，跳转页面
						     window.history.go(-1);
						},
						error:function(){
							tips("更新病历表异常，请稍后再试！");
							return;
						}
						
				     });
     				
     				
     	 		},
     			error:function(){
     				tips(data.message);
     				return;
     			}
     			
     	})
    	
    	
    }//else结束
	
 	
	
}	
}	


function selfLabel(){    //新增自定义标签
	var codes='';
    var newtext = $("input[name='newtext']").val();	
   
    $('#newlabels').val("");  //首先清空，否则不执行下面代码的情况下，编辑时候的数据有错(数据累加重复)
    
	 if(newtext.length>0){
		 var labelname = newtext.slice(0,newtext.length-1); //去掉最后的逗号
		 var labelnameArray =  labelname.split(','); 
		
			for (var i=0;i<labelnameArray.length;i++)
	       {   
	    	    
				$.ajax({
	                    url:"${pageContext.request.contextPath}/dimagelabel/addDimagelabel",
	                    type:"post",
	                    data:{
	                    	labelname:labelnameArray[i],
	                    	createtor:$("#createtor").val(),
	                    	status:"1",
	                    	imgnum:"0",
	                    },
	                    async: false,//设置成同步   for单线程    ajax多线程   必须同步，否则外面访问不到里面的变量
	                    
	                    success:function(data){
	                    	codes += data.data.labelcode+',';
	                    	
	    	        	},
	                    error:function(e){
	                    	tips("添加自定义标签异常，请稍后再试！");
	                    	return false;
	                        
	                    }
	                });  
	    	
	       }
		//保存完成之后，将新增的code返回，供给新增影像时使用
		$('#imagelabels').val($('#imagelabels').val()+codes); 
		//新增的code  编辑时用到
		$('#newlabels').val(codes);
		return true;
	 }
	 else{
		return true;
	 }
	 
	 
}



function updateLable(){ 
	
	//1.新增的自定义标签保存之前，找出标签库范围内减少和新增的标签
	var string01 = $('#oldlabels').val();
	var arr01 = getArrayFromString(string01);  //字符串变数组     详见 tag.js
	var string02 = $('#imagelabels').val();
	var arr02 = getArrayFromString(string02);
		
	var added = getAdd(arr01,arr02);       //两个数组比较，找出新增和减少的。详见 tag.js
	var deleted = getDelete(arr01,arr02);
	
	//2.  新增的自定义标签保存 	
    if(!selfLabel())
		return false;
	
	//3.新增的自定义+新增的标签库
	$('#newlabels').val($('#newlabels').val()+added);
	
	//4.新加的  label个数加1
	$.ajax({    
			url:"${pageContext.request.contextPath}/dimagelabel/addImgnumBycodes",
			data:{codes:$('#newlabels').val()},
			type:"post",
			dataType:"json",
			
			success:function(data){
				
			},
			error:function(){
				tips("添加标签关联数目异常，请稍后再试！");
				return false;
			}
			
	})
	 
	//5.删除掉的  label个数减1
    $.ajax({    
			url:"${pageContext.request.contextPath}/dimagelabel/reduceImgnumBycodes",
			data:{codes:deleted},
			type:"post",
			dataType:"json",
			
			success:function(data){
				
			},
			error:function(){
				tips("减少标签关联数目异常，请稍后再试！");
				return false;
			}
			
	})
	
	
	return true;

}



function formValidator(){
	$('#form-addOrUpdate').bootstrapValidator({
		 message: 'This value is not valid',
         feedbackIcons: {
             valid: 'glyphicon glyphicon-ok',
             invalid: 'glyphicon glyphicon-remove',
             validating: 'glyphicon glyphicon-refresh'
          },
        fields: { 
        	/* recordno:{
            	validators: {
                    notEmpty: {
                        message: 'recordno不能为空'
                    }
               
                 }
            }  */
          
        }
    });
}
 
 
/*返回到列表页*/
function returnList(){
	window.history.go(-1);
}



</script>
</body>
</html>