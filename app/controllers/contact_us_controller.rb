class ContactUsController < ApplicationController
  def index
  end

  def send_contact_email
    @contact = Contact.new(contact_params)
    @contact.save
    ContactMailer.new_contact_mail(@contact).deliver_now
    redirect_to contact_us_path, flash: {notice: "Email je bil uspešno poslan!"}
  end

private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end

end
