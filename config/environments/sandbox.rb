# frozen_string_literal: true

require 'syslog/logger'

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Enable Rack::Cache to put a simple HTTP cache in front of your application
  # Add `rack-cache` to your Gemfile before enabling this.
  # For large-scale production use, consider using a caching reverse proxy like
  # NGINX, varnish or squid.
  # config.action_dispatch.rack_cache = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for Apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure
  # cookies.
  # config.force_ssl = true

  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :warn

  # Prepend all log lines with the following tags.
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups.
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  # config.action_controller.asset_host = 'http://assets.example.com'

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise
  # delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # Set default host for mailer URLs
  # config.action_mailer.default_url_options = {host: "example.com"}

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Include working directory name in log for servers running multiple Rails instances.
  # logger = ActiveSupport::Logger.new(STDOUT)
  # logger.formatter = ::Logger::Formatter.new
  # config.logger = ActiveSupport::TaggedLogging.new(logger)
  # config.log_tags = [ Rails.root.to_s.split('/').last ]

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # Use syslog for logging
  config.logger = ActiveSupport::TaggedLogging.new(Syslog::Logger.new('dmp_assistant'))

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: Rails.application.secrets.smtp_address,
    port: Rails.application.secrets.smtp_port,
    domain: Rails.application.secrets.smtp_domain,
    user_name: Rails.application.secrets.smtp_user_name,
    password: Rails.application.secrets.smtp_password,
    authentication: Rails.application.secrets.smtp_authentication || 'plain',
    enable_starttls_auto: true
  }

  config.hosts << Rails.application.secrets.dmproadmap_host if Rails.application.secrets.dmproadmap_host.present?
end
# Fix JSON Download Error
Rails.application.routes.default_url_options[:host] = Rails.application.secrets.dmproadmap_host
