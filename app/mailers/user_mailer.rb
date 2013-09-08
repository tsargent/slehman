class UserMailer < ActionMailer::Base

  default from: "tsargent@gmail.com"
  
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
end
