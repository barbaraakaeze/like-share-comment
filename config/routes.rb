Rails.application.routes.draw do
  devise_for :users
  resources :links
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  ## set root route
  root 'links#index'
  resources :links do
    member do
      put 'like' => 'links#like'
    end
  end
end