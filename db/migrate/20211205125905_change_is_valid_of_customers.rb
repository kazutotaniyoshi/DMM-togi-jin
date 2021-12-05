class ChangeIsValidOfCustomers < ActiveRecord::Migration[5.2]
  def change
     change_column_default :customers, :is_valid, from: nil, to: false
  end
end
