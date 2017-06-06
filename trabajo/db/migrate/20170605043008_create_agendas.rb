class CreateAgendas < ActiveRecord::Migration[5.1]
  def change
    create_table :agendas do |t|
      t.datetime :hora
      t.string :estado
      t.string :descripcion
      t.boolean :confirmacion

      t.timestamps
    end
  end
end
