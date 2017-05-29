class Addforeigntpacienteandagenda < ActiveRecord::Migration[5.1]
  def change
    add_column :pacientes, :agenda_id, :integer
    add_foreign_key :pacientes, :agendas, column: :agenda_id, primary_key: :id
  end
end
