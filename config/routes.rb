# frozen_string_literal: true

Rails.application.routes.draw do
  resources :encounters, except: %i[new edit]
  resources :examples, except: %i[new edit]

  # Auth routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
