class ContactMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'omailly@example.com',
      to: 'cw.sm31@gmail.com',
      subject: "お問合せ内容"
    )
  end
end
