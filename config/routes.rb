Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'portfolio', to: 'pages#portfolio'
  get 'resuma', to: 'pages#resuma'
  get 'blogs', to: 'pages#blogs'
  get 'blog1', to: 'pages#blog1'
  get 'contact', to: 'pages#contact'


end
