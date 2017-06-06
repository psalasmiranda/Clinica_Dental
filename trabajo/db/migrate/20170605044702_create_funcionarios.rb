class CreateFuncionarios < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionarios do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :comuna
      t.string :direccion
      t.string :sexo
      t.integer :edad
      t.string :correo
      t.string :profesion
      t.string :contraseña

      t.timestamps
    end
  end
end
