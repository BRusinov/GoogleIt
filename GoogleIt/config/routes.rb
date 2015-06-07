Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :form_fields
  resources :fields
  resources :forms
  resources :reports

  root 'forms#home'
  # get '/forms'

  # get 'users/sign_up' as aign_up

end
