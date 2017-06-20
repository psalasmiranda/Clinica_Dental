class CreatePacientes < ActiveRecord::Migration[5.1]
  def change
    create_table :pacientes do |t|
      t.string :rut
      t.string :nombre
      t.string :materna
      t.string :paterno
      t.string :sexo
      t.string :telefono
      t.string :direccion
      t.integer :edad

      t.timestamps
    end
  end
end
