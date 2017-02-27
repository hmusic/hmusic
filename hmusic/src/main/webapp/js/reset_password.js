$().ready(function(){

	$("#old_password").blur(function(){
		if($(this).val()=="")
			$("#old_password_err").show();
		else $("#old_password_err").hide();
	});

	$("#new_password").blur(function(){
		if($(this).val()=="")
			$("#new_password_err").show();
		else $("#new_password_err").hide();

		if($(this).val()==$("#new_password2").val())
			$("#new_password_err2").hide();
		else if($("#new_password2").val()!="" && $(this).val()!=$("#new_password2").val())
			$("#new_password_err2").show();

	});

	$("#new_password2").blur(function(){
	
		if($(this).val()==$("#new_password").val())
			$("#new_password_err2").hide();
		else $("#new_password_err2").show();

	});
})