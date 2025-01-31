Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  # get '/about' => 'articles#about'

  resources :articles do
    resources :comments, only: [:new, :create]
  end

  resource :profile, only: [:show, :edit, :update]
end
