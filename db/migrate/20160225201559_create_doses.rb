class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.string :label
      t.integer :size
      t.time :time
      t.references :user, index: true, foreign_key: true
      t.references :medicine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
