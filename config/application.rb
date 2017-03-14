require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Amafa
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.action_mailer.smtp_settings = {
        address: 'smtpgw.chec.local',
        port: 25,
        authentication: :plain,
        enable_starttls_auto: true,
        openssl_verify_mode: OpenSSL::SSL::VERIFY_NONE
    }
  end
end
