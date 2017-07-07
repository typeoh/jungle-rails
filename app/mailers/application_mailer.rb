class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'

  def email(order)
    @order = Order.all
    mail(to: @order.first.email, subject: @order.first.id)
  end
end
