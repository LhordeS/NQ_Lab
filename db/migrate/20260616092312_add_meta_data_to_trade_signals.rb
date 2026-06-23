class AddMetaDataToTradeSignals < ActiveRecord::Migration[8.1]
  def change
    add_column :trade_signals, :metadata.jsonb, :string
  end
end
