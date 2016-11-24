Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    patch'users/:id' => 'devise/registrations#update', :as => 'user_registration'
  end
  resources :companies
  resources :people
  resources :jobs
  resources :social_media_profiles

  root 'companies#index'
end
