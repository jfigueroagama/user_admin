Rails.application.routes.draw do
  resources :user_in_outs
  root to: 'assistance#home'
  devise_for :users
end
