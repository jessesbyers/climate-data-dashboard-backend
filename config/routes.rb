Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :charts do 
        resources :wonders
        resources :notices
      end
    end
  end

end
