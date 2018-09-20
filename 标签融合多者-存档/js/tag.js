function Tag(inputId){
	var obj = new Object();
	if(inputId==null||inputId==""){
		alert("初始化失败，请检查参数！");
		return;
	}
	obj.inputId = inputId;
	//初始化
	obj = (function(obj){
		obj.tagValue="";
		return obj;
	})(obj);
	
	//初始化界面
	obj.initView=function(){
		var inputId = this.inputId;
	
		if(this.tagValue!=null&&this.tagValue!=""){
			setInputValue(inputId,this.tagValue);
		}
	}

	
	return obj;
}

//初始化 最上面、标签库加class
function setInputValue(inputId,inputValue){
	var tagListContaine = $("#"+inputId+"");
	inputValue = inputValue.replace(/，/g,",");
	var inputValueArray = inputValue.split(",");
	for(var i=0;i<inputValueArray.length;i=i+2){
		var id = $.trim(inputValueArray[i]);
		var text = $.trim(inputValueArray[i+1]);
		if(text!=""){
			var labelHTML = getappendHTML(id,text);
			tagListContaine.append(labelHTML);
		}
		$(".label-item").find("li[data='"+id+"']").addClass("selected");
	}
	
}

function getappendHTML(id,text){
	return "<li data='"+id+"''>"+text+"<div class='delete'></div></li>";
} 


/**********************************************************************************************/

function getArrayFromString(string){
	var string01 =  string.slice(0,string.length-1); //去掉最后的逗号
	var myArray = string01.split(",");
	return myArray;	
}


//arr01:之前 ,arr02：之后
//1中找2：得新增；2中找1：得减少
function getAdd(arr01,arr02){     
	var added = "";
	for (var i=0;i<arr02.length;i++){
		var index = arr01.indexOf(arr02[i]);
		if(index == -1){
			added += arr02[i]+",";
		}
	}
	return added;
	
}

function getDelete(arr01,arr02){
	var deleted = "";
	for (var i=0;i<arr01.length;i++){
		var index = arr02.indexOf(arr01[i]);
		if(index == -1){
			deleted += arr01[i]+",";
		}
	}
	return deleted;
}  




	  




