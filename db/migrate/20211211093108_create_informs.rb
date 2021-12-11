class CreateInforms < ActiveRecord::Migration[5.2]
  def change
    create_table :informs do |t|
      t.text :inform
      t.integer :request_id

      t.timestamps
    end
  end
end
