class User < ApplicationRecord
    #バリデーション。重複したデータは登録しない
    #validates :email, {uniqueness: true}
    def manage
        User.create(name:"orino",email:"gmail.com")
    end
end
