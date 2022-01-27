Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#top'
  get '/terms', to: 'static_pages#terms'
  get '/privacy', to: 'static_pages#privacy'
  get '/description', to: 'static_pages#description'

  # ログイン
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create], param: :uuid
  resources :posts do
    post :confirm, action: :confirm_new, on: :new
    post 'likes', to: 'posts#likes'
    resources :comments, only: %i[create], shallow: true
  end
end
