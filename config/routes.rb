Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :unicorns
  resources :poisons
  resources :living_spaces
  resources :clans
  root 'main#index'
end
