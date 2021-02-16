Rails.application.routes.draw do
  resources :events
  resources :channels
  resources :users
  resources :platforms
  resources :schedules
  resources :fighters
  resources :main_event_fighters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
