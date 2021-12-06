class AddColumsRequests < ActiveRecord::Migration[5.2]
  # 予約に必要なカラムの追加
  def change
    add_column :requests, :name, :string
    add_column :requests, :status, :integer
  end
end
