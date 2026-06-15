# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_06_15_120625) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "signal_outcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.decimal "return_15m"
    t.decimal "return_30m"
    t.decimal "return_5m"
    t.decimal "return_60"
    t.bigint "trade_signal_id", null: false
    t.datetime "updated_at", null: false
    t.index ["trade_signal_id"], name: "index_signal_outcomes_on_trade_signal_id"
  end

  create_table "trade_signals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.decimal "entry_price"
    t.integer "score"
    t.string "signal_type"
    t.string "ticker"
    t.datetime "triggered_at"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "signal_outcomes", "trade_signals"
end
