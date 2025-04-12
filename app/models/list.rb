class List < ApplicationRecord
  #Listモデルに画像をつけたい、has_one_attachedはRailsでファイル(画像やPDF)を一つ添付するための機能
  #has_one_attached :ファイル名→erbも@user.ファイル名に変更しなければならない、fieldも:ファイル名に変更する必要がある
  has_one_attached :image

  # バリデーション→空のデータ保存を許さない機能
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
