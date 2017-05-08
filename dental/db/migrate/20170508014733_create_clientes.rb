class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rut
      t.int :fono
      t.string :correo
      t.string :direccion
      t.string :prevencion

      t.timestamps
    end
  end
end
