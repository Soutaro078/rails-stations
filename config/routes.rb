Rails.application.routes.draw do
  get 'sheets/index'
  get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/movies', to: 'movies#index'
  get 'sheets', to: 'sheets#index'
  resources :movies, only: [:show]



  #管理者用のルーティング
  namespace :admin do
    get 'movies/index'
    get 'movies/show'
    resources :movies, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
