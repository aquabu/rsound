class Player
  attr_accessor :csound_options, :score_path
  
  def initialize
    @csound_options = "-odac -iadc"
    @score_path = File.dirname(__FILE__) + "/../scores/"
  end
  
  #takes an orchestra or csd file and a score
  #passes them to the csound command with @csound_options
  def play_score(file1, score=nil)
    exec "csound #{@csound_options} #{@score_path}#{file1}" unless score
    exec "csound #{@csound_options} #{@score_path}#{file1} #{score_path}#{score}" if score
  end
end