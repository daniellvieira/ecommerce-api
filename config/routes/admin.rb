namespace :admin do
  namespace :v1 do
    get 'home' => 'home#index'
    resources :categories
    resources :system_requirements
    resources :coupons
  end
end