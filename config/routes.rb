Rails.application.routes.draw do
  resources :gifts
  resources :messages
  resources :events
  resources :contacts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
