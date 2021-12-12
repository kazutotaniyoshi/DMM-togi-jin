Rails.application.routes.draw do
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
root to: "public/homes#top"
  namespace :public do
    get 'customers/unsubscribe'#退会の設定
    patch 'customers/withdraw'#退会の設定
    resources :customers, only:[:show,:edit,:update]
      resources :requests, only:[:new,:show,:create,:index,:destroy]do
        collection do
        get 'complete'
        end
      end
    end
    namespace :admin do
      root to: "homes#top"
      resources :customers,only:[:index,:show,:edit,:update]

      resources :requests, only:[:show,:create,:destroy]
      resources :informs
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
