class CreateTiposervicos < ActiveRecord::Migration
  def change
    create_table :tiposervicos do |t|
      t.string :titulo
      t.string :descricao

      t.timestamps
    end
  end
end
