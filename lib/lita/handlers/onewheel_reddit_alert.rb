require 'json'
require 'rest-client'

module Lita
  module Handlers
    class OnewheelRedditAlert < Handler
      config :path, required: true
      config :timer, required: false, default: 10

      route(/^redditest$/i, :handle_test, command: true)

      def handle_test(response)
        r = RestClient.get "https://old.reddit.com/#{config.path}/new.json", user_agent: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'
        payload = JSON.parse(r.body)
        payload['data']['children'].each do |element|
          # puts element.inspect
          response.reply element['data']['title']
          response.reply element['data']['url']
        end
        response.reply "Mmmhmm"
      end

      Lita.register_handler(self)
    end
  end
end
