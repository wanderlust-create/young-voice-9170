Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/professors', to: 'professors#index'
  get '/professors/new', to: 'professors#new'
  post '/professors', to: 'professors#create'

  get '/studens', to: 'studenst#index'
  get '/students/new', to: 'students#new'
  post '/students', to: 'students#create'

end
