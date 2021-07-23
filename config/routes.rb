Rails.application.routes.draw do
  devise_for :views
  
  resources :strains
  resources :wines

  devise_for :users, controllers: {
        sessions: 'users/sessions'
 }


  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
