Rails.application.routes.draw do
  root 'missionaries#home'
  resources :missionaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
