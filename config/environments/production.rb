Rails.application.configure do
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = true
  
  config.log_level = :info
  
  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # enable disp images sent by ActionMailer
  config.action_controller.asset_host = '18.179.167.223'
  config.action_mailer.asset_host = config.action_controller.asset_host
  config.action_mailer.default_url_options = { host: '18.179.167.223' }

  config.action_mailer.default_url_options = { host: "18.179.167.223" }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587, 
    user_name: 'toshihiro.no.ecsite@gmail.com',
    password: ENV['gmail_pass'],
    authentication: 'plain'
  }
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log
end
