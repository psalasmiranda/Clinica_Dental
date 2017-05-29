class AddForeignproveedorAndlistado < ActiveRecord::Migration[5.1]
  def change
    add_column :listados, :proveedor_id, :integer
    add_foreign_key :listados, :proveedors, column: :proveedor_id, primary_key: :id
  end
end
