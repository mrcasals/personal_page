PersonalPage::Application.routes.draw do
  ActiveAdmin.routes(self)

  resources :posts, only: [:index, :show]

  devise_for :users, ActiveAdmin::Devise.config

  root :to => 'posts#index'

end
