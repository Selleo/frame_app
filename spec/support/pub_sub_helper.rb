require 'pub_sub/testing'

RSpec.configure do |config|
  config.include Wisper::RSpec::BroadcastMatcher
  config.include PubSub::Testing::SubscriptionsHelper
  config.include PubSub::Testing::EventDataHelper

  config.before(:suite) do
    PubSub::Testing::SubscriptionsHelper.clear_wisper_subscriptions!
  end

  config.around(:each, subscribers: true) do |example|
    domain_name = example.metadata[:described_class].to_s.underscore
    PubSub.subscriptions.register(domain_name)
    example.run
    clear_wisper_subscriptions!
  end
end
