Rails.application.routes.draw do
  devise_for :users
  root to: 'tests#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'tests#home'
  resources :tests do
    collection do
      get "take_test", to: "tests#take_test"
      get "say_word"
    end
  end
end
