Rails.application.routes.draw do
  root 'splash#index'

  resources :events do
    resources :guests
  end

  resources :users do
    resources :events
  end

  resource :session
  
end
