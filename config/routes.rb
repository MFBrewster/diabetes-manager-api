Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :medicines, only: [:index, :create, :destroy]
  resources :doses, only: [:index, :create, :update, :destroy, :show]
end
