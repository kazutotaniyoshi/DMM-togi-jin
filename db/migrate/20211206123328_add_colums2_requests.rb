class AddColums2Requests < ActiveRecord::Migration[5.2]
  #予約のカラムを再追加
  def change
    add_column :requests, :comment, :text
    add_column :requests, :time, :string
  end
end
