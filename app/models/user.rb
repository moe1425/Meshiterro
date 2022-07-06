class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :post_images, dependent: :destroy
  # 1対複数の関係＝ユーザー1つに対して複数の投稿ができ、そのユーザーと投稿したものが紐づいてる。
  # :destroyは「1:Nの1側(ユーザー)が削除されたとき、N側(投稿したもの)を全て削除する」という機能。

end