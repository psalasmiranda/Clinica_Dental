class CreateAgentes < ActiveRecord::Migration[5.1]
  def change
    create_table :agentes do |t|
      t.string :nombre
      t.string :rut
      t.string :telefono
      t.string :correo
      t.string :dirrecion

      t.timestamps
    end
  end
end
