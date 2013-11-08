class CreateCans < ActiveRecord::Migration
  def change
    create_table :cans do |t|
      t.string :name
      t.integer :price
      t.integer :qua

      t.timestamps
    end
  end
end
