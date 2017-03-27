Rails.application.routes.draw do
  scope "(:locale)", :locale => /en|lt/ do
    root :to => 'suppliers#index'
    get '/suppliers' => 'suppliers#index', as: :suppliers
    post '/suppliers' => 'suppliers#create'
  end

  get '/suppliers/show/:id' => 'suppliers#show', as: :supplier
  get '/suppliers/new' => 'suppliers#new', as: :new_supplier
  get '/supplier-items/edit/:id' => 'supplier_items#edit', as: :edit_supplier_item

  post '/suppliers/delete/:id' => 'suppliers#soft_delete', as: :delete_supplier
  post '/supplier_items/delete/:id' => 'supplier_items#soft_delete', as: :delete_supplier_item
  post '/supplier_items/update/:id' => 'supplier_items#update', as: :update_supplier_item

  resources :suppliers do
    resources :supplier_items
  end
end
