class AddForeignToAgendaAndFuncionario < ActiveRecord::Migration[5.1]
  def change
    add_column :funcionarios, :agenda_id, :integer
    add_foreign_key :funcionarios, :agendas, column: :agenda_id, primary_key: :id
  end
end
