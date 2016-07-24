class Character
  attr_reader :name, :loyal, :years_experience

  def initialize(input)
    @name = (input)[:name]
    @loyal = (input)[:loyal]
    @years_experience = (input)[:years_experience]
  end

  def loyalty
    if loyal == true
      puts "I'll stay and fight!"
    else
      puts "I'm surrendering to the Klingons."
    end
  end

  def experienced
    if years_experience > 5
      puts "I know what to do about Klingons."
    else
      puts "How do we fight Klingons?"
    end
  end

  def victory
    if years_experience > 5 && loyal == true
      puts "Victory!"
    else
      puts "We surrender!"
    end
  end

end

kira = Character.new({name: "Major Kira", loyal: true, years_experience: 6})
puts kira.experienced
puts kira.loyalty
kira.victory
