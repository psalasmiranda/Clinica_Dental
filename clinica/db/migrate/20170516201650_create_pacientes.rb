class CreatePacientes < ActiveRecord::Migration[5.1]
  def change
    create_table :pacientes do |t|
      t.string :nombres
      t.string :rut
      t.string :direccion
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end
