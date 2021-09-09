require 'sidekiq'
require 'sidekiq-status'
require 'sidekiq/web'
require 'sidekiq-status/web'

if Rails.env.production?
  schedule_file = 'config/schedule.yml'

  if File.exist?(schedule_file) && Sidekiq.server?
    Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
  end
end
