class User < ApplicationRecord
    #バリデーション。重複したデータは登録しない
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :passwd, presence: true
    
end
