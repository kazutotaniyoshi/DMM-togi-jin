class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string    :name,   null: false
      t.integer   :status, null: false
      t.text      :comment
      t.string    :date
      t.string    :time
      t.integer   :making_status
      t.text      :inform

      t.timestamps
    end
  end
end
