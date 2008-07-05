require "test/unit"
require File.dirname(__FILE__) + "/../bin/score"

class PlayerTest < Test::Unit::TestCase
  def setup
    @score = Score.new
  end
  
  def test_orchestra_default_settings
    assert_equal 44100, @score.sr
    assert_equal 4410, @score.kr
    assert_equal 10, @score.ksmps
    assert_equal 1, @score.nchnls
    assert_match "scores", @score.path
  end
  
  def test_to_csd
    assert_not_nil @score.to_csd
  end
end