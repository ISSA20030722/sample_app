Rails.application.routes.draw do
  # 第二章投稿機能を作ろう
  get 'lists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  # .../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
# ルートパスを指定することで、http://localhost:3000/にアクセスしたときに表示されるページを指定できる