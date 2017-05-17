class Addforeigntpacienteandagenda < ActiveRecord::Migration[5.1]
  def change
    add_colum :pacientes, :agenda_id :integer
    add_foreign_key :pacientes, :agendas, colum: agenda_id, primary_key: :id
  end
end
