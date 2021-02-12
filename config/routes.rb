Rails.application.routes.draw do
  devise_for :users
  root to: 'results#index'
end
