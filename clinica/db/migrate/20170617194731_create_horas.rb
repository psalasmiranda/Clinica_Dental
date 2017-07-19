class CreateHoras < ActiveRecord::Migration[5.1]
  def change
    create_table :horas do |t|
      t.string :bloque

      t.timestamps
    end
  end
end
