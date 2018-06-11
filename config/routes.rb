Rails.application.routes.draw do

  resources :topics do
    resources :comments do
      resources :likes, only: [:create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'topics#index'
end
