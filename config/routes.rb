Rails.application.routes.draw do
  root 'quotes#index'
  resources :quotes, except: [:destroy] do
    resources :comments, except: [:show, :destroy, :index]
  end
end
