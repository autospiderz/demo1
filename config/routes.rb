Demo1::Application.routes.draw do
  resources :clients
  
  match '/list', :to => 'clients#list'
  match '/destroy', :to => 'clients#destroy'
  match '/edit', :to => 'clients#edit'
  match '/clients', :to => 'clients#new'
  
  root :to => "clients#new"

  
end
