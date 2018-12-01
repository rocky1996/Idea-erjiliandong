    var province = document.getElementById("province");
	var city = document.getElementById("city");
    var button = document.getElementById("search");


    beginning();
    //获取其中的天气预报结果
    button.addEventListener("click",function(event){
    	event.preventDefault();
    	result(city.value);
    });




//发送请求将其中的对应的市进行更换即可
    function loadXMLDoc(obj)
 {
	var xmlhttp;
	if (window.XMLHttpRequest)
	{
		xmlhttp=new XMLHttpRequest();
	}
	else
	{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			var oFragmeng = document.createDocumentFragment(); 
			var data = JSON.parse(xmlhttp.responseText);
			for (var i = 0; i <data.length; i++) {
				var option = document.createElement("option");
				option.innerHTML=data[i].city;
				oFragmeng.appendChild(option);
			}
			city.innerHTML="";
			city.appendChild(oFragmeng);


		}
	}
	xmlhttp.open("POST","http://192.168.3.61:8080/province/getProvinceId.do",true);
	xmlhttp.send(obj);
}


//获取其中的省份
 function beginning()
 {
	var xmlhttp;
	if (window.XMLHttpRequest)
	{
		xmlhttp=new XMLHttpRequest();
	}
	else
	{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			var oFragmeng = document.createDocumentFragment(); 
			var data = JSON.parse(xmlhttp.responseText);
			for (var i = 0; i <data.length; i++) {
				var option = document.createElement("option");
				option.innerHTML=data[i].province;
				oFragmeng.appendChild(option);
			}
			province.innerHTML="";
			province.appendChild(oFragmeng);


		}
	}
	xmlhttp.open("GET","http://192.168.3.61:8080/province/getAllProvinces.do",true);
	xmlhttp.send();
}


//将其中的数据全部发送给后台
 function result(obj)
 {
	var xmlhttp;
	if (window.XMLHttpRequest)
	{
		xmlhttp=new XMLHttpRequest();
	}
	else
	{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			var oFragmeng = document.createDocumentFragment(); 
			var data = JSON.parse(xmlhttp.responseText);
			// for (var i = 0; i <data.length; i++) {
			// 	var option = document.createElement("option");
			// 	option.innerHTML=data[i].city;
			// 	oFragmeng.appendChild(option);
			// }
			// city.innerHTML="";
			// city.appendChild(oFragmeng);


		}
	}
	xmlhttp.open("POST","http://192.168.3.61:8080/province/getData.do",true);
	xmlhttp.send(obj);
}





