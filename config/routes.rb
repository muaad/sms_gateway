Rails.application.routes.draw do
  resources :price_lists

  resources :aggregator_ips

  resources :credits

  resources :bind_details

  resources :sender_ids

  resources :network_contacts

  resources :networks

  resources :aggregator_countries

  resources :aggregator_providers

  resources :providers

  resources :aggregators

  resources :sms

  resources :phonebooks

  resources :countries

  resources :groups

  root to: 'home#index'
  devise_for :users
end
