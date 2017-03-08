Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'
end
