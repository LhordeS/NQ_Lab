class TradeSignalsController < ApplicationController
  def index
    @trade_signals = TradeSignal.order(triggered_at: :desc)
  end

  def show
    @trade_signal = TradeSignal.find(params[:id])
  end
end
