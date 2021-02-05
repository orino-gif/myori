class User < ApplicationRecord
  #バリデーション
  VALID_EMAIL=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWD=/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/
  validates :name, presence: true, uniqueness: true, 
    length: { maximum: 255 }
  validates :email, presence: true, uniqueness: true,
    length: { maximum: 255 }, format: { with: VALID_EMAIL }
  validates :passwd, format: { with: VALID_PASSWD }
   
end
