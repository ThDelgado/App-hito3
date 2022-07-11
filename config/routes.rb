Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  authenticated :user , ->(user) { user.admin? } do
    get 'admin', to: 'admin#index'
    get 'admin/items'
    get 'admin/comments'
    get 'admin/users'
    get 'admin/show_items'
  end
  resources :orders
  resources :products
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
