require "test/unit"
require File.dirname(__FILE__) + "/../bin/player"

class PlayerTest < Test::Unit::TestCase
  def setup
    @player = Player.new
    @player.score_path = File.dirname(__FILE__) + "/fixtures/"
  end
  
  def test_player_can_be_instantiated
    assert_not_nil @player
  end
  
  # def test_play_guiro_orc_and_sco
  #   puts "playing guiro.orc and guiro.sco"
  #   assert @player.play_score("guiro.orc", "guiro.sco")
  # end
  
  # TODO: running these two tests in sequence causes csound to only run one of the requests
  def test_play_guiro2_csd
    puts "playing guiro2.csd"
    assert @player.play_score("guiro2.csd")
  end
end