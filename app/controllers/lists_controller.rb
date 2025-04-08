class ListsController < ApplicationController
  def new
    #viewへ引き渡すためのインスタンス変数にからのModelオブジェクトを生成する
    @list=List.new
  end

# 投稿を保存する機能を追加する
  def create
    # 1&2. データを受取、新規登録するためのインスタンスを作成する
    list=List.new(list_params)
    # 3. データをデータベースに保存するためのsaveメソッドを実行する
    list.save
    # 4. トップ画面へリダイレクトする
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  # privateメソッドより下はURLとしてアクセスすることができず、外部から呼び出すことができない、逆にこれより上はpublicメソッドと呼ばれる
  # ストロングパラメータ
  def list_params

    params.require(:list).permit(:title, :body, :image)
    #title,image,bodyの3つのカラムを許可する
  end
end
