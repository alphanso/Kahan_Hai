ActionMailer::Base.smtp_settings = {
  address:              'smtp.sendgrid.net',
  port:                 587,
  domain:               Rails.application.secrets.domain_name,
  user_name:            Rails.application.secrets.email_provider_username,
  password:             Rails.application.secrets.email_provider_password,
  authentication:       :plain,
  enable_starttls_auto: true
}