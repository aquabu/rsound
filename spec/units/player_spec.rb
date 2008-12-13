require File.expand_path(File.dirname(__FILE__) + "/../test_helper")

describe Player do
  before :each do
    @player = Player.new
    @player.score_path = File.expand_path(File.dirname(__FILE__) + "/fixtures") + "/"
  end 
  
  it "can be instantiated" do
    assert_not_nil @player
  end 
  
  # TODO: running these two tests in sequence causes csound to only run one of the requests
  it "can play score" do
    assert @player.play_score("guiro2.csd")
  end
end
