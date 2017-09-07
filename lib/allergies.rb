require_relative 'allergies_chart'

class Allergies
  include AllergiesChart
  attr_reader :score, :allergic_to

  def initialize(score)
    @score = score
    @allergic_to = []
  end

  def allergy_finder
    while @score > 0
      self.allergies_chart.each do |allergy_score, allergian|
        if @score >= allergy_score
          @allergic_to.push(allergian)
          @score -= allergy_score
        end
      end
    end
  end

end
