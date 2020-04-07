Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :wonders
      resources :notices
      resources :charts
    end
  end

end
