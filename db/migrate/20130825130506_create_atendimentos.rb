class CreateAtendimentos < ActiveRecord::Migration
  def change
    create_table :atendimentos do |t|
      t.string :sumario
      t.string :resolucao
      t.date :dataAtualizacao
      t.string :horaAtualizacao
      t.string :horaFinalizacao
      t.string :status
      t.references :tecnico
      t.references :registro

      t.timestamps
    end
    add_index :atendimentos, :tecnico_id
    add_index :atendimentos, :registro_id
  end
end
