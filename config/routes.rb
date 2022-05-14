Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'my_puzzles', action: :my_puzzles, controller: 'users'
  get 'my_bookings', action: :my_bookings, controller: 'users'

  resources :bookings, only: [:index, :destroy]

  resources :puzzles do
    resources :bookings, only: [:new, :create]
  end

  resources :users do
    resources :puzzles, only: [:index, :show]
  end

end
