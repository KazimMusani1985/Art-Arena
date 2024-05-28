function send_message(){
    jQuery('.help-block').html('');
	var c_name=jQuery("#c_name").val();
	var c_email=jQuery("#c_email").val();
	var c_subject=jQuery("#c_subject").val();
	var c_message=jQuery("#c_message").val();
    var is_error='';
	
	if(c_name==""){
		jQuery('#c_name_error').html('Please enter your name');
        is_error='yes';
	}
    else if(c_email==""){
		jQuery('#c_email_error').html('Please enter your email');
        is_error='yes';
	}
    else if(c_subject==""){
		jQuery('#c_subject_error').html('Please enter a subject');
        is_error='yes';
	}
    else if(c_message==""){
		jQuery('#c_message_error').html('Please enter your message');
        is_error='yes';
	}else{
		jQuery.ajax({
			url:'send_message.php',
			type:'post',
			data:'name='+c_name+'&email='+c_email+'&subject='+c_subject+'&message='+c_message,
			success:function(result){
				alert(result);
			}	
		});
	}
}

function user_register(){
    jQuery('.help-block').html('');
	var name=jQuery("#name").val();
	var email=jQuery("#email").val();
	var mobile=jQuery("#mobile").val();
	var password=jQuery("#password").val();
    var is_error='';
	
	if(name==""){
		jQuery('#name_error').html('Please enter your username');
        is_error='yes';
	}
    if(email==""){
		jQuery('#email_error').html('Please enter your email');
        is_error='yes';
	}
    if(mobile==""){
		jQuery('#mobile_error').html('Please enter mobile');
        is_error='yes';
	}
    if(password==""){
		jQuery('#password_error').html('Please enter password');
        is_error='yes';
	}
    if(is_error==''){
		jQuery.ajax({
			url:'register_submit.php',
			type:'post',
			data:'name='+name+'&email='+email+'&mobile='+mobile+'&password='+password,
			success:function(result){
                if(result=='exist'){
                    jQuery('#email_error').html('This email is already in use');
                }
                if(result=='insert'){
                    jQuery('.register_msg p').html('Thank you for registration');
                }
			}	
		});
	}
}

function user_login(){
    jQuery('.help-block').html('');
	var l_email=jQuery("#l_email").val();
	var l_password=jQuery("#l_password").val();
    var is_error='';

    if(l_email==""){
		jQuery('#l_email_error').html('Please enter your email');
        is_error='yes';
	}
    if(l_password==""){
		jQuery('#l_password_error').html('Please enter password');
        is_error='yes';
	}
    if(is_error==''){
		jQuery.ajax({
			url:'login_submit.php',
			type:'post',
			data:'email='+l_email+'&password='+l_password,
			success:function(result){
                if(result=='wrong'){
                    jQuery('.login_msg p').html('Please enter valid login details');
                }
                if(result=='valid'){
					window.location.href=window.location.href;
				}
			}	
		});
	}
}

function manage_cart(pid,type){
	if(type=='update'){
		var qty=jQuery("#"+pid+"qty").val();
	}else{
		var qty=jQuery("#qty").val();
	}
	jQuery.ajax({
		url:'manage_cart.php',
		type:'post',
		data:'pid='+pid+'&qty='+qty+'&type='+type,
		success:function(result){
			if(type=='update' || type=='remove'){
				window.location.href=window.location.href;
			}
			if(result=='not_avaliable'){
				alert('Qty Not Available');
			}else{
				jQuery('.badge').html(result);
			}
		}	
	});	
}