Rails.application.routes.draw do
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"

  resources :post_images, only: [:new, :create, :index, :show]

  get '/homes/bout' => 'homes#about', as: "about"
  
  devise_for :users
end
