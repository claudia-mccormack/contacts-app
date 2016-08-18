require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def double(number)
    return number * 2
  end

  def triple(number)
    return number * 3
  end

  def halve(number)
    return number / 2
  end


# Class Testing:

  describe '#subtract' do
    it 'returns the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(10,6)
      expect(result).to eq(4)
    end
  end

  describe '#multiply' do
    it 'returns the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(10,6)
      expect(result).to eq(60)
    end
  end

  describe '#divide' do
    it 'returns the dividend of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(60,6)
      expect(result).to eq(10)
    end
  end

  describe '#power' do
    it 'returns one number raised to the power of another' do
      calculator = Calculator.new
      result = calculator.power(2,3)
      expect(result).to eq(8)
    end
  end

  describe '#double' do
    it 'returns the number times 2' do
      calculator = Calculator.new
      result = calculator.double(7)
      expect(result).to eq(14)
    end
  end

  describe '#triple' do
    it 'returns a number times 3' do
      calculator = Calculator.new
      result = calculator.triple(6)
      expect(result).to eq(18)
    end
  end

  describe '#halve' do
    it 'returns half of a number' do
      calculator = Calculator.new
      result = calculator.halve(50)
      expect(result).to eq(25)
    end
  end
end
