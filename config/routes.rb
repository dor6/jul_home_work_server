Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index] do
        member do
          get 'image'
        end
      end
    end
  end

end
