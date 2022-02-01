class AddColumnsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :shop_name, :integer
  end
end
