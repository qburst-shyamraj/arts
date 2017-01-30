Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  resources :users, only: [:new, :create]

	resources :user_sessions, only: [:create, :destroy]

	delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
	get '/sign_in', to: 'user_sessions#new', as: :sign_in
end
