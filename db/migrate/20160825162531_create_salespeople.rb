class CreateSalespeople < ActiveRecord::Migration
  def change
    create_table :salespeople do |t|
      t.string :name
      t.text :contact
      t.float :target
      t.text :image

      t.timestamps null: false
    end
  end
end
