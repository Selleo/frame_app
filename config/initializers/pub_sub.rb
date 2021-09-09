Rails.application.reloader.to_prepare do
  # Enable when introducing first subscription
  # PubSub::Subscriptions.subscriptions_path = Rails.root.join('config/subscriptions.yml')
  # PubSub::Subscriptions.load!
end
