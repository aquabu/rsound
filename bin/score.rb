require 'erb'
class Score

  attr_accessor :sr, :kr, :ksmps, :nchnls, :options, :path, :score_name
  def initialize
    @sr = 44100
    @kr = 4410
    @ksmps = 10
    @nchnls = 1
    @options = "-odac -iadc"
    @path = File.dirname(__FILE__) + "/../scores/"
    @score_name = "unnamed_score"
  end
  
  def to_csd
    template = ERB.new <<-EOF
<CsoundSynthesizer>
<CsOptions>
  <%= @options %>
</CsOptions>

<CsInstruments>
sr = <%= @sr %>
kr = <%= @kr %>
ksmps = <%= @ksmps %>
nchnls = <%= @nchnls %>

    instr 01  ;example of a guiro
a1  guiro p4, 0.01
    out a1
    endin
</CsInstruments>

<CsScore>
i1 0 1 20000
e
</CsScore>

<CsoundSynthesizer>
  EOF
    
    template.result(binding)
  end
  
  def write
    #write csd to @path/@filename
    File.open(score_path,"w") {|f| f.print self.to_csd}
  end
  
  def play
    #write the csd and then play it
    
  end
  
  def score_path
    @path + @score_name + ".csd"
  end
end

# Score.new.write