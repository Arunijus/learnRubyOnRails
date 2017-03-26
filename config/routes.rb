Rails.application.routes.draw do
  scope "(:locale)", :locale => /en|lt/ do
    root :to => 'suppliers#index'
    get '/suppliers' => 'suppliers#index', as: :suppliers
  end

  get '/suppliers/show/:id' => 'suppliers#show', as: :supplier
  get '/suppliers/new' => 'suppliers#new', as: :new_supplier

  post '/suppliers' => 'suppliers#create'
  post '/suppliers/delete/:id' => 'suppliers#soft_delete', as: :delete_supplier
  post '/supplier_items/delete/:id' => 'supplier_items#soft_delete', as: :delete_supplier_item

  resources :suppliers do
    resources :supplier_items
  end
end
