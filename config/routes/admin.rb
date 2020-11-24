namespace :admin do
  namespace :v1 do
    get 'home' => 'home#index'
    resources :categories
  end
end