class CreateAgendas < ActiveRecord::Migration[5.1]
  def change
    create_table :agendas do |t|
      t.datetime :hora
      t.integer :costo

      t.timestamps
    end
  end
end
