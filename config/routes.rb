Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :companies
  resources :people
  resources :social_media_profiles

  root 'companies#index'
end
