class ContactMailer < ApplicationMailer

  def new_contact_mail(contact_params)
    @contact = contact_params

    #to_email = ENV['EMAIL']
    mail(to: "mocivnik10@gmail.com", subject: "From sportni blog")
  end
end
