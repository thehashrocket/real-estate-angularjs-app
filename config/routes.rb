Todo::Application.routes.draw do

  root to: 'home#index'

  resources :tickets

  resources :tasks

  devise_for :users  

  namespace :api, defaults: {format: :json} do
    devise_scope :user do
      resource :session, only: [:create, :destroy]
    end
    resources :properties, only: [:index, :create, :update, :destroy, :show] do
      resources :tickets, only: [:index, :create, :update, :destroy]
    end
    resources :task_lists, only: [:index, :create, :update, :destroy, :show] do
      resources :tasks, only: [:index, :create, :update, :destroy]
    end
  end

  # get '/dashboard' => 'templates#index', as: 'dashboard'
  # get '/properties' => 'templates#properties', as: 'properties'
  # get '/admin/create' => 'templates#create', as: 'create_prop'
  # get '/admin/manage' => 'templates#manage', as: 'manage_prop'
  # get '/templates/:path.html' => 'templates#template', :constraints => { :path => /.+/  }
end
