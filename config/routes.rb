Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :logged_exceptions, path: :exceptions do
    resources :messages
  end

  namespace :embed do
    resources :logged_exceptions, path: :exceptions do
      resources :messages
    end
  end

  root to: "logged_exceptions#index"
end
