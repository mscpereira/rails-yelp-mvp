Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end

  resources :reviews, only: :destroy
end
