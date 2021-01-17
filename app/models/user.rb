class User < ApplicationRecord
    #バリデーション
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true, uniqueness: true, length: { maximum: 255 }
    validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX }
    validates :passwd, presence: true, length: { maximum: 255 }
    
end
