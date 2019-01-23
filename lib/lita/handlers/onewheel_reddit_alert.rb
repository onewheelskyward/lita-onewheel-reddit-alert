require 'json'
require 'rest-client'

module Lita
  module Handlers
    class OnewheelRedditAlert < Handler
      config :path, required: true
      config :timer, required: false, default: 10

      route(/^redditest$/i, :handle_test, command: true)

      def handle_test(response)
        response.reply "Mmmhmm"
      end

      Lita.register_handler(self)
    end
  end
end
