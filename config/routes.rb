Rails.application.routes.draw do
  # 第二章投稿機能を作ろう
  resources :lists 
  # get "homes/top" => "homes#top"と同じ意味だがコントローラーメイトアクション名が同じであるため省略されている
  # homesコントローラーのtopアクションを呼び出す
  get '/top' => 'homes#top'
  root "lists#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
# ルートパスを指定することで、http://localhost:3000/にアクセスしたときに表示されるページを指定できる