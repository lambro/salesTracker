class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.text :contact
      t.text :source
      t.date :date
      t.text :description
      t.boolean :active
      t.integer :salesperson_id

      t.timestamps null: false
    end
  end
end
