require 'bowling'

describe Bowling do
  it "should score 0 for gutter game" do
    bowling = Bowling.new
    20.times { bowling.hit(0) }
    bowling.score.should == 0
  end

  it "should score 20 for all single pins" do
    bowling = Bowling.new
    20.times {bowling.hit(1) }
    bowling.score.should == 20
  end

  it "should score a single ball bonus for spares" do
    bowling = Bowling.new
    2.times { bowling.hit(5) }
    bowling.hit(1)
    17.times { bowling.hit(0) }
    bowling.score.should == 12
  end

  it "should score a double ball bonus for strikes" do
    bowling = Bowling.new
    bowling.hit(10)
    bowling.hit(1)
    bowling.hit(1)
    16.times { bowling.hit(0) }
    bowling.score.should == 14
  end

  it "should score 300 for a perfect game" do
    bowling = Bowling.new
    13.times {bowling.hit(10) }
    bowling.score.should == 300
  end
end
