class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.text :contact
      t.float :value
      t.datetime :date
      t.text :description
      t.integer :salesperson_id
      t.text :logo

      t.timestamps null: false
    end
  end
end
