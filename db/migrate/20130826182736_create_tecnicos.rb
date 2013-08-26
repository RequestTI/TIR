class CreateTecnicos < ActiveRecord::Migration
  def change
    create_table :tecnicos do |t|
      t.string :matricula
      t.string :nome
      t.string :ocupacao
      t.string :especializacao
      t.references :tiposervico

      t.timestamps
    end
    add_index :tecnicos, :tiposervico_id
  end
end
