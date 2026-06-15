class TradeSignal < ApplicationRecord
  has_one :signal_outcome

  validates :signal_type, presence: true
  validates :entry_price, presence: true
end
