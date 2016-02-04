class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :en_US
      t.string :zh_TW

      t.timestamps null: false
    end
  end
end
