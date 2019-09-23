Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root 'rails_admin/main#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
