class AddColumsRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :name, :string
    add_column :requests, :status, :integer
  end
end
