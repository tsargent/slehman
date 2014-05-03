class UserMailer < ActionMailer::Base

  include Devise::Mailers::Helpers

  default from: "tyler@tylertylerty.com"
  
  def message_email(email, message)
    @email = email
    @message = message

    mail(
      :subject => 'Message sent from contact form',
      :to      => 'stephen.lehman@gmail.com',
      :bcc     => 'tsargent@vsapartners.com',
      :from    => 'tyler@tylertylertyler.com',
      :tag     => 'contact-form'
    )
  end

  def reset_password_instructions(record, token, opts={})
    @token = token
    devise_mail(record, :reset_password_instructions, {from: 'tyler@tylertylertyler.com'})
  end



end
