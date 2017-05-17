class CreatePersonals < ActiveRecord::Migration[5.1]
  def change
    create_table :personals do |t|
      t.string :nombres
      t.string :rut
      t.string :correo
      t.string :telefono
      t.string :profesion

      t.timestamps
    end
  end
end
