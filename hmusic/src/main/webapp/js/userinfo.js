$().ready(function(){
	$("#signature").keyup(function(){
		var length=140-this.value.length;
		if(length<0)
		{
			$("#signature").addClass('u-txt-err');
			$("#remain").removeClass('s-fc2').addClass('u-txt-err');
			$("#remain").text("字数超出");
			return 0;
		}
		$("#signature").removeClass('u-txt-err');
			$("#remain").addClass('s-fc2').removeClass('u-txt-err');
		$("#remain").text(length);
	});

	$("#telephone").blur(function(){
		var telephone = $(this).val();
		var tel_length = this.value.length;
		if(tel_length!=11)
		{
			$("#tel-err").show();
		}	
	else if(isNaN(telephone))
		{
		$("#tel-err").show();
		}
		else {
			$("#tel-err").hide();
			}
	});

	$("#reset_password").click(function(){

		
		$.ajax({
 			url: "reset_password.html",
 			type:"GET",
 			
 			cache: false,
 			success:function(data){
 				alert("123");
 			},
 			error:function(){
 				//alert("13");
 			}
		});
  		
		
		
	});
	 function uploadImage() {
        //判断是否有选择上传文件
            var imgPath = $("#uploadFile").val();
            if (imgPath == "") {
                alert("请选择上传图片！");
                return;
            }
            //判断上传文件的后缀名
            var strExtension = imgPath.substr(imgPath.lastIndexOf('.') + 1);
            if (strExtension != 'jpg' && strExtension != 'gif'
            && strExtension != 'png' && strExtension != 'bmp') {
                alert("请选择图片文件");
                return;
            }
            $.ajax({
                type: "POST",
                url: "handler/UploadImageHandler.ashx",
                data: { imgPath: $("#uploadFile").val() },
                cache: false,
                success: function(data) {
                    alert("上传成功");
                    $("#imgDiv").empty();
                    $("#imgDiv").html(data);
                    $("#imgDiv").show();
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    alert("上传失败，请检查网络后重试");
                }
            });
        }

	function getFileName(o)
	{
    var pos=o.lastIndexOf("\\");
    return o.substring(pos+1);  
	}

	$("#file_upload").change(function(){
		uploadImage();
		/*var file = $(this).val();
		var filename = getFileName(file);
		
		$("#user_photo").attr("src","user_img/"+filename);*/
	});
	
		
		
	
		
	
})