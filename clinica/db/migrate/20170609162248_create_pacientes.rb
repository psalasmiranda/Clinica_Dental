class CreatePacientes < ActiveRecord::Migration[5.1]
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.string :apellidos
      t.string :sexo
      t.string :rut
      t.integer :edad
      t.string :comuna
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
