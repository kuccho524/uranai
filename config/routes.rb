Rails.application.routes.draw do

  # admin側のルーティング
  devise_for :admins
  namespace :admin do
    root to: 'homes#top'
    resources :members, except: [:index, :new, :destroy]
    resources :uranais, except: [:new]
  end

  # 会員側のルーティング
  devise_for :members
  scope module: :public do
    root to: 'homes#top'
    resource :members, only: [:show, :edit, :update]
    resources :uranais
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
