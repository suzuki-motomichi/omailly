Rails.application.routes.draw do
  root 'static_pages#top'
  resources :posts do
    post :confirm, action: :confirm_new, on: :new
  end
  resource :contact_mailer, only: %i[new create] do
    post :confirm, action: :confirm, on: :new
  end
  # resources :posts do
  #   post :confirm, action: :confirm_new, on: :new
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
