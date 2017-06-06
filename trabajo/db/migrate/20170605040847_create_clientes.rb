class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :comuna
      t.string :direccion
      t.string :sexo
      t.integer :edad

      t.timestamps
    end
  end
end
