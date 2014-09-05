Rails.application.routes.draw do
  resources :stations
  resources :lines
  resources :stops
  resources :autobuses
end
