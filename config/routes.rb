Rails.application.routes.draw do
  resources :sphts

  resources :photos

  mount Surveyor::Engine => "/surveys", :as => "surveyor"
  resources :quiz, :only => [:show, :new, :create]

  root to: 'visitors#index'
  devise_for :users
  resources :users
  #match '/help' => 'pages#help'
  get 'visitors/quiz'
  get 'visitors/SportsView'
  get 'visitors/ScienceView'
  get 'visitors/contact'
end
