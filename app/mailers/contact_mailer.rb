class ContactMailer < ApplicationMailer

  def new_contact_mail(contact_params)
    @contact = contact_params

    to_email = ENV['EMAIL']
    mail(to: to_email, bcc:"mocivnik10@gmail.com", from: @contact.email, subject: "From sportni blog")
  end
end
