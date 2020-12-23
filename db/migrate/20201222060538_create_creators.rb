class CreateCreators < ActiveRecord::Migration[5.1]
  def change
    create_table :creators do |t|
      t.text :name
      t.text :email
      t.time :ragistration_date
      t.integer :rank

      t.timestamps
    end
  end
end
