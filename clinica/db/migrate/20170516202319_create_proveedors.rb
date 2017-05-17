class CreateProveedors < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedors do |t|
      t.string :nomre
      t.string :rut
      t.string :correo
      t.string :telefono

      t.timestamps
    end
  end
end
