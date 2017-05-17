class AddForeignproveedorAndlistado < ActiveRecord::Migration[5.1]
  def change
    add_colum :listados, :prooveedor_id, :integer
    add_foreign_key :listados, :proovedors, colum: :prooveedor_id, primary_key: :id
  end
end
