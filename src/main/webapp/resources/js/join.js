$('#id').blur(function() {
	let id =$('#id').val();
	$.get('./idCheckAjax?id='+id, function(data){
		data = data.trim();
		if(data=='1'){
			$('#idResult').html('사용 가능');
		}else {
			$('#idResult').html('사용 불가능');
		}

	});
 });
 
 $('#nickName').blur(function() {
	let nickName =$('#nickName').val();
	$.get('./nickNameCheckAjax?nickName='+nickName, function(data2){
		data2 = data2.trim();
		if(data2=='1'){
			$('#nickNameResult').html('사용 가능');
		}else {
			$('#nickNameResult').html('사용 불가능');
		}

	});
 });

 $("#sign").click(function(){

	let result=true;
	let t;
	 $(".accInfo").each(function(s1, s2){
		if($(s2).val() == ""){
			result=false;
			t=s2;
		}
	});
	
	if(result){
			$("#accInfos").submit();
		}else {
			alert('빈칸을 입력해 주십시오');	
			$(t).focus();
		}
});