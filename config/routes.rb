Rails.application.routes.draw do

  # admin側のルーティング
  namespace :admin do
    root to: 'homes#top'
    resources :members, except: [:new, :create, :destroy]
    resources :kanteis, except: [:index, :new, :create]
  end
  devise_for :admins

  # 会員側のルーティング
  scope module: :public do
    root to: 'homes#top'
    resource :members, only: [:show, :edit, :update]
    resources :kanteis
  end

  devise_for :members, controllers: {
    sessions: 'members/sessions',
    paswords: 'members/paswords',
    registrations: 'members/registrations',
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
