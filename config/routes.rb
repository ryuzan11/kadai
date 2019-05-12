Rails.application.routes.draw do
  devise_for :users

  # item関連
  root "items#index"

  get 'items/:id/confirm_buy', to: 'items#confirm_buy'
  get 'items/:id/complete_buy', to: 'items#complete_buy'
  get 'items/detail', to: 'items#detail'

  resources :items do
    collection do
      post 'pay'
    end

    member do
      get :check
    end

  end

  post 'items/pay',to: 'items#pay'


  resources :signup, only: [:index]



  get 'creditcards/new', to: 'creditcards#new'

  # user関連
  get 'users/:id/register', to: 'users#register'
  get 'users/:id/profile', to: 'users#profile'
  get 'users/:id/lists', to: 'users#lists'
  get 'users/logout', to: 'users#logout'
  resources :users, only: [:show, :edit, :update]

  resources :creditcard, only: [:new]

  resources :signup_info
end
