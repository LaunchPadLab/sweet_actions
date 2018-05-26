require 'active_support/all'

module SweetActions
  class << self
    def configuration
      @config ||= SweetActions::Configuration.new
    end

    def config
      yield configuration
    end
  end

  ActiveSupport.run_load_hooks(:sweet_actions, self)
end

# overhead
require 'sweet_actions/version'
require 'sweet_actions/configuration'
require 'sweet_actions/exceptions'

# base classes
require 'sweet_actions/action_factory'
require 'sweet_actions/action'
require 'sweet_actions/json_action'

# helpers
require 'sweet_actions/controller_concerns'
require 'sweet_actions/routes_helpers'