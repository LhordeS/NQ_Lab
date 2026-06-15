class CreateTradeSignals < ActiveRecord::Migration[8.1]
  def change
    create_table :trade_signals do |t|
      t.string :signal_type
      t.string :ticker
      t.decimal :entry_price
      t.integer :score
      t.datetime :triggered_at

      t.timestamps
    end
  end
end
