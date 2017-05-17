class Addforeigntoespecialistaandagenda < ActiveRecord::Migration[5.1]
  def change
    add_colum :personals, :ag_id :integer
    add_foreign_key :personals, :agendas, colum: ag_id, primary_key: :id
  end
end
