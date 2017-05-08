class CreateProveedors < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :rut
      t.int :fono
      t.string :direccion
      t.string :empresa
      t.string :correo

      t.timestamps
    end
  end
end
