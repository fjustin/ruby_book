require 'minitest/autorun'
require './lib/gate'

class GateTest < Minitest::Test
  def test_gate
    #とりあえずGateオブジェクトが作れることを確認
    assert Gate.new
  end
end
