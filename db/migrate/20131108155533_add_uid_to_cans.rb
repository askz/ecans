class AddUidToCans < ActiveRecord::Migration
  def change
    add_column :cans, :uid, :integer
  end
end
