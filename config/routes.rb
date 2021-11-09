Rails.application.routes.draw do
  root 'static_pages#top'
  get '/terms', to: 'static_pages#terms'
  get '/privacy', to: 'static_pages#privacy'
  get '/description', to: 'static_pages#description'

  resources :posts do
    post :confirm, action: :confirm_new, on: :new
    post 'likes', to: 'posts#likes'
  end
end
