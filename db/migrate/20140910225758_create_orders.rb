class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :cod
      t.text :descripcion

      t.timestamps
    end
  end
end
