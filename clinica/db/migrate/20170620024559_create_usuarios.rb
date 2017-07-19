class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :alias
      t.string :nombre
      t.string :ape_paterno
      t.string :ape_materno
      t.string :rut
      t.string :telefono
      t.string :correo
      t.string :cargo
      t.string :password_digest
      t.boolean :medico

      t.timestamps
    end
  end

end
