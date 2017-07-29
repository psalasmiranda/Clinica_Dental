class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :alias
      t.string :nombre
      t.string :ape_paterno
      t.string :ape_materno
      t.string :rut
      t.integer :telefono
      t.string :correo
      t.string :cargo
      t.string :password_digest
      t.string :tipo
      t.time :hora_entrada
      t.time :hora_salida
      t.date :fecha_ingreso
      t.boolean :Cariologia
      t.boolean :Endodoncia
      t.boolean :Gnatologia
      t.boolean :Implantologia_dental
      t.boolean :Odontogeriatria
      t.boolean :Odontologia_estetica
      t.boolean :Odontologia_forense
      t.boolean :Odontologia_preventiva
      t.boolean :Odontologia_restauradora
      t.boolean :Odontopediatria
      t.boolean :Periodoncia
      t.boolean :Radiologo_dentomaxilofacial
      t.boolean :Patologo_bucomaxilofacial
      t.boolean :Cirujano_maxilofacial
      t.boolean :Restauracion_dental
      t.boolean :Prostodoncista
      t.boolean :Ordotencista
      t.timestamps
    end
  end

end
