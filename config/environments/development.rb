# frozen_string_literal: true
# Development

Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true

  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.quiet = true
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  # Mailer configuration
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: '465',
    domain: 'gmail.com',
    user_name: ENV['GMAIL_USERNAME'],
    password: ENV['GMAIL_PASSWORD'],
    tls: true,
    ssl: true,
    authentication: :plain,
    open_timeout: 5,
    read_timeout: 5
  }

  config.action_mailer.default_url_options = {host: 'localhost:3000'}
end
