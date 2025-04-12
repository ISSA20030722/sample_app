class List < ApplicationRecord
  #Listモデルに画像をつけたい
  has_one_attached :image
end
