Rails.application.routes.draw do
  devise_for :users
  resources :form_fields
  resources :fields
  resources :forms
  resources :reports

  root 'forms#home'

  # get 'users/sign_up' as aign_up

end
