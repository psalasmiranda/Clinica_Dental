class AddForeignToAgendaAndTratamiento < ActiveRecord::Migration[5.1]
  def change
    add_column :tratamientos, :agenda_id, :integer
    add_foreign_key :tratamientos, :agendas, column: :agenda_id, primary_key: :id
  end
end
