class PagesController < ApplicationController
  def fortune
    new_num = rand(100)
      if new_num < 30
        @fortune = "Your fortune is... you will fly around the world in a hot air balloon!"
      elsif new_num >= 30 && new_num < 65
        @fortune = "Your fortune is... you will travel the desert with a caravan!"
      else
        @fortune = "Your fortune is... you will travel the ocean floor in a submarine!"
      end
  end

  def lottery
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    @lottery = numbers
  end

  def counter
  end

  def counter
  end

  def bottles_of_beer
    @bottles_of_beer = []
      beers = 100
      99.times do
        bottles = beers - 1
        @bottles_of_beer << bottles.to_s + " bottles of beer on the wall!"
        beers = bottles
      end
    end
    puts @bottles_of_beer
end
