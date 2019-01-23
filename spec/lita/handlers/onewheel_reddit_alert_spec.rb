require 'spec_helper'

def mock_it_up(file, uri)
  mock_result = File.open("spec/fixtures/#{file}.json").read

  response = {}
  allow(response).to receive(:body).and_return(mock_result)

  allow(RestClient).to receive(:get).with(uri).and_return(response)
end

describe Lita::Handlers::OnewheelRedditAlert, lita_handler: true do

  before(:each) do
    registry.configure do |config|
      config.handlers.onewheel_reddit_alert.path = 'r/portland'
      config.handlers.onewheel_reddit_alert.timer = '10'
    end
  end

  it 'does neat loggly things' do
    send_command 'redditest'
    expect(replies.last).to include('Mmmhmm')
  end
end
