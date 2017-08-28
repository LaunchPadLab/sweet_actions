require 'sweet_actions/version'

module SweetActions
end

require 'sweet_actions/action_factory'
require 'sweet_actions/api_action'

# concerns
require 'sweet_actions/rest_serializer_concerns'
require 'sweet_actions/rest_concerns'
require 'sweet_actions/save_concerns'
require 'sweet_actions/read_concerns'

# actions
require 'sweet_actions/collect_action'
require 'sweet_actions/create_action'
require 'sweet_actions/update_action'
require 'sweet_actions/show_action'
require 'sweet_actions/destroy_action'

# default actions
require 'sweet_actions/defaults/collect'
require 'sweet_actions/defaults/create'
require 'sweet_actions/defaults/update'
require 'sweet_actions/defaults/show'
require 'sweet_actions/defaults/destroy'

require 'sweet_actions/controller_concerns'
require 'sweet_actions/routes_helpers'
