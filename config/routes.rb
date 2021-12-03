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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
