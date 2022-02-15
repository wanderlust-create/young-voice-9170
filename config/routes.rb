Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/professor', to: 'professor#index'
  get '/professor/new', to: 'professor#new'
  post '/professor', to: 'professor#create'

  get '/student', to: 'student#index'
  get '/student/new', to: 'student#new'
  post '/student', to: 'student#create'

end
