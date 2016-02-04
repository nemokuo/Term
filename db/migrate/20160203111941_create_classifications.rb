class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :en_US
      t.string :zh_TW
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
