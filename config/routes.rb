Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'perfumes/credit' => 'perfumes#credit'
  get 'perfumes/nisa' => 'perfumes#nisa'

  resources :perfumes

  get 'posts/top' => 'posts#top'
  root 'posts#top'

  resources :posts do
    resources :comments, only: [:create]
  end

end
