require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end
end
