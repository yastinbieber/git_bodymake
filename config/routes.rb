Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  resources :workoutmenus do
    collection do
      get 'confirm'
    end
  end
  resources :users, only: [:index, :show, :edit, :update]
  resources :useradvices, only: [:new, :create, :show]
  resources :advicediaries, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      get 'confirm'
    end
    collection do
      get 'choice'
    end
    collection do
      get 'content'
    end
  end
  resources :fooddiaries do
    collection do
      get 'confirm'
    end
    # get :autocomplete_fooddate_foodname, :on => :collection
  end
  resources :idealweights
  resources :advicemenus do
    collection do
      get 'introduction'
    end
  end
  resources :weightchanges
end