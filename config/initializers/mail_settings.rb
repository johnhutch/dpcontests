# Default settings for a gmail account

Dpcontests::Application.configure do
    ENV['RAILS_ENV'] == "test" ? config.action_mailer.delivery_method = :test : config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :address => Settings.mail.address,
      :port => Settings.mail.port,
      :domain => Settings.mail.domain,
      :authentication => Settings.mail.authentication,
      :user_name => Settings.mail.user_name,
      :password => Settings.mail.password,
      :enable_starttls_auto => true,
      :openssl_verify_mode3 => 'none'
    }
end
