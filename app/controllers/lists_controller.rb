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
    # 4. 詳細画面へリダイレクトする
    redirect_to list_path(list.id)
  end

  # 三章 一覧画面を表示しよう
  def index
    # @付きの変数はインスタンス変数
    # .allメソッドはlistsテーブルに保存されている全てのデータを取得できる
    @lists = List.all
  end

  def show
    # レコードを1件だけ取得するのでインスタンス変数は単数形の@list
    # params[:id]はURLに埋め込まれたidの値を取得する、結果としてURLの:idに応じたレコードを一見検索し、@listでviewに渡す
    @list = List.find(params[:id])
  end

  # 第五章 編集機能を作ろう
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
