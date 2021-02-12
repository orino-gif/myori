class CreateCreators < ActiveRecord::Migration[5.1]
  def change
    create_table :creators do |t|
      t.string :name
      t.string :email
      t.string :passwd

      t.timestamps
    end
  end
end
