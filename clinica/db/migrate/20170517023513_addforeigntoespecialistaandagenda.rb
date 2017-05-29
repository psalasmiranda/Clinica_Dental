class Addforeigntoespecialistaandagenda < ActiveRecord::Migration[5.1]
  def change
    add_column :personals, :agendas_id, :integer
    add_foreign_key :personals, :agendas, column: :agendas_id, primary_key: :id
  end
end
