class Registro < ActiveRecord::Base
  belongs_to :tiposervico
  belongs_to :cliente
  attr_accessible :codregistro, :complemento, :data, :descricao, :hora, :tiposervico_id, :cliente_id
end



