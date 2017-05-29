class Addforeigntotratamientoandagenda < ActiveRecord::Migration[5.1]
  def change
    add_column :tratamientos, :agendas_id, :integer
    add_foreign_key :tratamientos, :agendas, column: :agendas_id, primary_key: :id
  end
end
