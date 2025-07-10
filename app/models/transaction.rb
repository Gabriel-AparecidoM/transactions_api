class Transaction
  include Mongoid::Document
  include Mongoid::Timestamps

  field :value, type: BigDecimal

  validates_presence_of :value
  validates_numericality_of :value, greater_than_or_equal_to: 0
end
