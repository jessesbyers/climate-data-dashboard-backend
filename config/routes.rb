Rails.application.routes.draw do
  resources :wonders
  resources :notices
  resources :charts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
