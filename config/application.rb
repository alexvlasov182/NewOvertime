# frozen_string_literal: true

require File.expand_path('boot', __dir__)

require 'rails/all'

Bundler.require(*Rails.groups)

module NewOvertime
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.autoload_paths << Rails.root.join('lib')
    config.assets.initialize_on_precompile = false
    config.action_controller.permit_all_parameters = true
    config.secret_key_base = ENV['SECRET_KEY_BASE']
  end
end

#sender@example.com
#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