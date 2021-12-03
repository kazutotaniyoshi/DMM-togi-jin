class AddColumsToCustomers < ActiveRecord::Migration[5.2]
  #顧客側のデバイスに必要なカラムを追加したマイグレーション
  def change
    add_column :customers, :last_name, :string
    add_column :customers, :first_name, :string
    add_column :customers, :last_name_kana, :string
    add_column :customers, :first_name_kana, :string
    add_column :customers, :postcode, :string
    add_column :customers, :address, :string
    add_column :customers, :tel, :string
    add_column :customers, :is_valid, :boolean
  end
end
