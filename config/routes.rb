Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  root 'translations#index'
  resources :translations
end
