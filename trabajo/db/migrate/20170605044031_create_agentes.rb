class CreateAgentes < ActiveRecord::Migration[5.1]
  def change
    create_table :agentes do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :empresa
      t.string :telefono
      t.string :comuna
      t.string :direccion
      t.string :correo

      t.timestamps
    end
  end
end
