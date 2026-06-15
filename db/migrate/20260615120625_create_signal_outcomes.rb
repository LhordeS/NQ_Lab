class CreateSignalOutcomes < ActiveRecord::Migration[8.1]
  def change
    create_table :signal_outcomes do |t|
      t.references :trade_signal, null: false, foreign_key: true
      t.decimal :return_5m
      t.decimal :return_15m
      t.decimal :return_30m
      t.decimal :return_60

      t.timestamps
    end
  end
end
