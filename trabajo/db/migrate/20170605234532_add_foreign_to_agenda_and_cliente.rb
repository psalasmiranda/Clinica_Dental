class AddForeignToAgendaAndCliente < ActiveRecord::Migration[5.1]
  def change
    add_column :clientes, :agenda_id, :integer
    add_foreign_key :clientes, :agendas, column: :agenda_id, primary_key: :id
  end
end
