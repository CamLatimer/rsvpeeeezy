Rails.application.routes.draw do
  root 'splash#index'

  # nice job using nested resources!

  resources :events do
    resources :guests
  end

  resources :users do
    resources :events
  end

  resource :session

end
