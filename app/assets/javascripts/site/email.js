$(document).ready(function(){
    
    var email_container = $('#email_container');
    var email_form = email_container.find('#email_form');
    var control_group = email_form.find('.control-group');
    var email_input = email_form.find('input[type=text]');
    var email_button = email_form.find('button');
    
    var clearError = function() {
        control_group.removeClass('error');
        $('label', email_form).remove();
    };
    
    var confirmSuccess = function() {
        email_form.append('<p class="text-success">Welcome! Check your email.')
    }
    
    var submitEmail = function(e){
        e.preventDefault();
        
        $('.control-label').remove();
        $('.text-success').remove();
        control_group.removeClass('error');
        
        var email = '';
        
        var email_check = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}$/i;
        
        email = email_input.val();
        
        if(!email_check.test(email)) {
            control_group.addClass('error')
            email_form.append('<label for="email_address" class="control-label">Oops! Invalid email address. Try again.</label>');
            return false;
        } else {
            
            // email_button.fadeOut();
            // email_input.fadeOut();
            
            var request = $.ajax({
              type: "POST",
              url: '/emails/subscribe',
              data: {email: email}
            });

            request.done(function(msg){
                // console.log('done: ' + msg)
                confirmSuccess();
            });
            request.fail(function(jqXHR, textStatus, errorThrown) {
                console.log('fail: ' + textStatus + errorThrown)
            })
            
        }
        


    }
    email_form.on('focus', 'input[type=text]', clearError);
    email_form.submit(submitEmail)
    
})