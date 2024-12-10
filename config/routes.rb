Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'jobs#index'

  # JOBS
  get '/jobs'     => 'jobs#index'
  post '/jobs'    => 'jobs#create'
  get '/jobs/:id' => 'jobs#show'
end
