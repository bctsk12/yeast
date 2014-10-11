Rails.application.routes.draw do
  resources :logged_exceptions, path: :exceptions

  root to: "logged_exceptions#index"
end
