require "test_helper"

class TradeSignalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trade_signals_index_url
    assert_response :success
  end

  test "should get show" do
    get trade_signals_show_url
    assert_response :success
  end
end
