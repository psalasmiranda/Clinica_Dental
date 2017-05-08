class CreateVenta < ActiveRecord::Migration[5.0]
  def change
    create_table :venta do |t|
      t.int :precio
      t.int :fecha_A

      t.timestamps
    end
  end
end
