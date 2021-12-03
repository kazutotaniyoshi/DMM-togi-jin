Rails.application.routes.draw do
  namespace :public do
    root to: "homes#top"
    resources :customers, only:[:show,:edit,:udate]
      resources :request, only:[:new,:show,:create,:index]do
        collection do
        get 'complete'
        end
      end
    end
    namespace :admin do
      root to: "homes#top"
      resources :customers,only:[:index,:show,:edit,:update]
      resources :requests, only:[:show]
    end
# 顧客用のログイン・サインインの設定
# URL /customers/sign_in ...
#スキップで余分なルーティングを非表示
devise_for :customers,skip: [:passwords,], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用のログインの設定
# URL /admin/sign_in ...
#スキップで余分なルーティングを非表示
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
