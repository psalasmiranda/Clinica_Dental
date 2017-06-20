class CreateEspecialistas < ActiveRecord::Migration[5.1]
  def change
    create_table :especialistas do |t|
      t.string :nombre
      t.string :apellidos
      t.string :rut
      t.string :telefono
      t.string :correo
      t.string :cargo
      t.string :contraseña

      t.timestamps
    end
  end
end
