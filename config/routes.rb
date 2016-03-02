Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/prescriptions/:id' => 'users#listmeds'
  get '/doses/user/:id' => 'users#listdoses'
  resources :users, only: [:index, :show]

  resources :medicines, only: [:index, :create, :destroy]

  resources :doses, only: [:index, :create, :update, :destroy, :show]
end
