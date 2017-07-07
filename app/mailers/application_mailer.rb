class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'

  def email(user)
    @user  = user
    @order = order
    mail(to: @user.email, subject: @order.id)
  end
end
