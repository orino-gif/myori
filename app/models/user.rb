class User < ApplicationRecord
    #バリデーション
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/
    validates :name, presence: true, uniqueness: true, length: { maximum: 255 }
    validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX }
    validates :passwd, format: { with: VALID_PASSWORD_REGEX }
   
    
end
