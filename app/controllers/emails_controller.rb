class EmailsController < ApplicationController

  def subscribe
    render :nothing => true
    Gibbon::API.throws_exceptions = false    
    gb = Gibbon::API.new
    list = gb.lists.list({:filters => {:list_name => 'Steve Lehman'}})
    id = list['data'][0]['id']
    gb.lists.subscribe({:id => id, :email => {:email => params[:email]} })
  end
  
  def message
    UserMailer.message_email(params[:email], params[:message]).deliver
    redirect_to contact_path, notice: 'Thanks for your message!'
  end

end
