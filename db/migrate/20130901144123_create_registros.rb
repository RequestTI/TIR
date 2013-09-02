class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.integer :codregistro
      t.string :descricao
      t.string :complemento
      t.date :data
      t.string :hora
      t.references :tiposervico
      t.references :cliente

      t.timestamps
    end
    add_index :registros, :tiposervico_id
    add_index :registros, :cliente_id
  end
end
