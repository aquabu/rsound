require File.expand_path(File.dirname(__FILE__) + "/../test_helper")

describe Score do
  before :each do
    @score = Score.new
  end 

  it "should configure score with default values" do
    @score.sr.should == 44100
    @score.kr.should == 4410
    @score.ksmps == 10
    @score.nchnls.should == 1
    @score.path == "scores"
  end
  
  it "should return a score" do
    @score.to_csd.should_not be_nil
  end
end
