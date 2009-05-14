class Bowling

  def initialize()
    @hits = []
  end

  def hit(pins)
    @hits << pins
  end

  def score
    score = 0
    rollIndex = 0
    (0..9).each {
      if isStrike? rollIndex
        score += 10 + strikeBonus(rollIndex)
        rollIndex += 1
      elsif isSpare? rollIndex
        score += 10 + spareBonus(rollIndex)
        rollIndex += 2
      else 
        score += scoreAFrame(rollIndex)
        rollIndex += 2
      end
    }
    score
  end

  private
  
  def isStrike?(rollIndex)
    @hits[rollIndex] == 10
  end

  def strikeBonus(rollIndex)
    @hits[rollIndex + 1] + @hits[rollIndex + 2] end
  
  def isSpare?(rollIndex)
    scoreAFrame(rollIndex) == 10
  end

  def spareBonus(rollIndex)
    @hits[rollIndex + 2]
  end

  def scoreAFrame(rollIndex)
      @hits[rollIndex] + @hits[rollIndex+1]
  end
  
end
