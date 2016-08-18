# require 'rspec'

class ChangeMachine

  def change(money)
    coins = []
    while money > 0
      if money >= 5
        money -= 5
        coins << 5
      else
        money -= 1
        coins << 1
      end
    end
    coins
  end
end


machine = ChangeMachine.new
machine.change(6)
