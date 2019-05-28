Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'welcome/home', to: 'welcome#home'
  root 'welcome#home'
  get 'welcome/about', to: 'welcome#about'
  
  resources :articles do
    collection do
      get :search
    end
  end

  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  resources :users, except:  [:new]
end
