Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'my_puzzles/:id', to: 'puzzles#user_index', as: 'my_puzzles'

  resources :puzzles do
    resources :bookings, only: [:new, :create]
  end

  resources :users do
    resources :puzzles, only: [:index, :show]
  end

end
