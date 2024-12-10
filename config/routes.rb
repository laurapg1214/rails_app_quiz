Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homepage#index'

  # JOBS
  get '/jobs'     => 'jobs#index'
  post '/jobs'    => 'jobs#create'
  get '/jobs/:id' => 'jobs#show'

  # Redirect all other paths to index page, which will be taken over by AngularJS
  get '*path' => 'homepage#index'
end
