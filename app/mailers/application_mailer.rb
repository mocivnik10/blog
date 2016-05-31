class ApplicationMailer < ActionMailer::Base
  add_template_helper(EmailHelper)
  default from: "dejan.sportniblog@gmail.com"
  layout 'mailer'
end
