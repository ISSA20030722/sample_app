Rails.application.routes.draw do
  
  get 'top' => 'homes#top'
  # resources :usersによってnew,show,index,edit,create,update,destroyの7つのアクションが自動で作成される
  resources :lists
end