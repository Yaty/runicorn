Rails.application.routes.draw do
  resources :unicorns
  resources :poisons
  resources :living_spaces
  resources :clans
  root 'main#index'
end
