Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # get '/contact' => 'contacts#one_contact'
    # get '/contacts' => 'contacts#many_contacts'

    # get '/contacts' => 'contactss#one_contact_action'

    get '/' => 'contacts#index'

    get '/contacts' => 'contacts#index'

    get '/contacts/new' => 'contacts#new' #these 2 are pairs
    post '/contacts' => 'contact#create'

    get '/contacts/:id' => 'contacts#show'

    get '/contacts/:id/edit' => 'contacts#edit' #these 2 are pairs
    patch '/contacts/:id' => 'contacts#update'

    delete '/contacts/:id' => 'contacts#destroy'

    get "/signup" => "users#new"
    post "/users" => "users#create"

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
end
