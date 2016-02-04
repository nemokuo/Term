class CreateTerminologies < ActiveRecord::Migration
  def change
    create_table :terminologies do |t|
      t.string :en_US
      t.string :zh_TW
      t.integer :classification_id

      t.timestamps null: false
    end
  end
end
