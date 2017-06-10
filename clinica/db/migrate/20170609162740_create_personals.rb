class CreatePersonals < ActiveRecord::Migration[5.1]
  def change
    create_table :personals do |t|
      t.string :nombre
      t.string :apellidos
      t.string :telefono
      t.string :rut
      t.integer :edad
      t.string :correo
      t.string :contraseña
      t.string :cargo

      t.timestamps
    end
  end
end
  
