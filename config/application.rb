require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Europe/Ljubljana'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

     if Rails.env.production?
          ActionMailer::Base.smtp_settings = {
            :address        => 'smtp.sendgrid.net',
            :port           => '587',
            :authentication => :plain,
            :user_name      => ENV['SENDGRID_USERNAME'],
            :password       => ENV['SENDGRID_PASSWORD'],
            :domain         => 'heroku.com',
            :enable_starttls_auto => true
          }
          config.action_mailer.default_url_options = { :host => 'sportni-blog.heroku.com' }
      else
        ActionMailer::Base.delivery_method = :smtp
        ActionMailer::Base.smtp_settings = {
         :address        => 'mailtrap.io',
         :port           => '2525',
         :authentication => :cram_md5,
         :user_name      => ENV['MAILTRAP_USERNAME'],
         :password       => ENV['MAILTRAP_PASSWORD']
       }
       config.action_mailer.default_url_options = { :host => 'localhost:3000' }
     end

  end
end
