require 'minitest/autorun'
require './lib/word_synth'
require './lib/effects'

class WordSynthTest < Minitest::Test
  def test_play
    #とりあえずモジュールが参照できることを確認する
    assert WordSynth
    assert Effects
  end
end
