Rails.application.routes.draw do

  root to:'pages#home'

  devise_for :users, controllers: {
    sessions:           "users/sessions",
    passwords:          "users/passwords",
    registrations:      "users/registrations",
    confirmations:      "users/confirmations",
    unlocks:            "users/unlocks"
  }

  devise_for :club_users, controllers: {
    sessions:           "club_users/sessions",
    passwords:          "club_users/passwords",
    registrations:      "club_users/registrations",
    confirmations:      "club_users/confirmations",
    unlocks:            "club_users/unlocks"
  }

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'login', to: 'pages#login'
  get 'sign_up', to: 'pages#sign_up'
  
  resource :club_user, only: [] do
    resource :club, controller: 'club_users/clubs'
  end

  resources :clubs
end
