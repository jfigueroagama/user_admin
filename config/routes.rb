Rails.application.routes.draw do
  root to: 'assistance#home'
  devise_for :users
end
