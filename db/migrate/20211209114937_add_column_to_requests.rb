class AddColumnToRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :customer, foreign_key: true
  end
end
