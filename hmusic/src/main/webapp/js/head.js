
function checkUserName(){
    var name=document.getElementById("username").value.trim();
    var nameRegex=/^[^@#]{3,16}$/;
    if(!nameRegex.test(name)){
        document.getElementById("nameInfo").innerHTML="长度3~11，不包含”@”和”#”";
        return false;
    }else{
        document.getElementById("nameInfo").innerHTML="";
        return true;
    }

}

//验证密码（长度在8个字符到32个字符）
function checkPassword(){
    var password=document.getElementById("userpassword").value.trim();
    //var password=$("#password").value;
    $("#passwordInfo").innerHTML="";
    //密码长度在8个字符到16个字符，由字母、数字和".""-""_""@""#""$"组成
    //var passwordRegex=/^[0-9A-Za-z.\-\_\@\#\$]{8,16}$/;
    //密码长度在8个字符到16个字符，由字母、数字和"_"组成
    var passwordRegex=/^[0-9A-Za-z_]\w{7,15}$/;
    if(!passwordRegex.test(password)){
        document.getElementById("passwordInfo").innerHTML="密码长度为8~32";
        return false;
    }else{
        document.getElementById("passwordInfo").innerHTML="";
        return true;
    }
}

//验证校验密码（和上面密码必须一致）
function checkRepassword(){
	var password=document.getElementById("userpassword").value.trim();
    var repassword=document.getElementById("userpassword2").value.trim();
    //校验密码和上面密码必须一致
    $("#repasswordInfo").innerHTML="";
    if(repassword==password){
    	 document.getElementById("passwordInfo").innerHTML="";
    	  return true;
    }else{
    	 document.getElementById("repasswordInfo").innerHTML="两次输入的密码不一致";
    	 return false;
    }
}


function check_form(){
	$("#submit").innerHTML="";
	if(checkUserName()&&checkPassword()&&checkRepassword())
	{ 
		return true;
	}
	else{
		document.getElementById("submit").innerHTML="请重新填写";
		return false;
	}
    
}
