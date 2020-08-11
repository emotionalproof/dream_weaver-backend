Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :themes
    end
  end
  namespace :api do
    namespace :v1 do
      resources :dream_symbols
    end
  end
  namespace :api do
    namespace :v1 do
      resources :dictionaries
    end
  end
  namespace :api do
    namespace :v1 do
      resources :entry_themes
    end
  end
  namespace :api do
    namespace :v1 do
      resources :entries
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
        get '/users/login/:username', to: "users#check_login"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
