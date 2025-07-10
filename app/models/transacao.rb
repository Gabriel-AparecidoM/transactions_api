class Transacao
  include Mongoid::Document
  include Mongoid::Timestamps

  field :valor, type: BigDecimal
  field :data_hora, type: DateTime

  validates_presence_of :valor, :data_hora
  validates_numericality_of :valor, greater_than_or_equal_to: 0
  validate :data_nao_deve_ser_futura

  private

  def data_nao_deve_ser_futura
    if data_hora.present? && data_hora > Time.current
      errors.add(:data_hora, "não pode ser uma data no futuro")
    end
  end
end