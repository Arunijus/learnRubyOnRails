Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/suppliers' => 'suppliers#index'
  get '/suppliers/show/:id' => 'suppliers#show', as: :supplier
  get '/suppliers/new' => 'suppliers#new', as: :new_supplier

  post '/suppliers' => 'suppliers#create'

  resources :suppliers do
    resources :supplier_items
  end
end
