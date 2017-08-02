Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  get 'pages/select_date'
  get 'pages/messages'
  # get 'franchise/:id/members/list'
  # get 'franchise/:id/chits/list'
  resources :users, only: [:new, :create]
  resources :franchises do 
    resources :chits, only: [:new, :create]
    resources :members, only: [:new, :create]
     resources :pages, only: [:index]
  end
 
  
	resources :user_sessions, only: [:create, :destroy]

	delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
	get '/sign_in', to: 'user_sessions#new', as: :sign_in
end
