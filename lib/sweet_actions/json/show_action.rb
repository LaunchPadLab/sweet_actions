module SweetActions
  module JSON
    class ShowAction < BaseAction
      include REST::Show

      private

      def respond
        serialize
      end
    end
  end
end