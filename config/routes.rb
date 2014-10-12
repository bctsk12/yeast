Rails.application.routes.draw do
  resources :logged_exceptions, path: :exceptions do
    resources :messages
  end

  root to: "logged_exceptions#index"
end
