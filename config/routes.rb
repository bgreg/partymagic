Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :guests
    resources :invitations
    resources :parties
    root to: "users#index"
  end

  devise_for :users
  resources :party_host, only: [:index]
  resources :flyer, only: [:index]
  resources :guests
  resources :invitations, only: [:show]
end
