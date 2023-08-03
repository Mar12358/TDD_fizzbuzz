require_relative '../solver'

RSpec.describe Solver do
  solve = Solver.new
  describe '#factorial' do
    it 'returns 1 when N = 0 or N = 1' do
      expect(solve.factorial(0)).to eql(1)
      expect(solve.factorial(1)).to eql(1)
    end

    it 'returns !n for n > 1' do
      expect(solve.factorial(3)).to eql(6)
      expect(solve.factorial(4)).to eql(24)
      expect(solve.factorial(5)).to eql(120)
    end

    it 'returns error exception' do
      expect { solve.factorial(-1) }.to raise_error(ArgumentError, 'No factorial for negative numbers')
    end
  end

  describe '#reverse' do
    it 'return reversed word' do
      expect(solve.reverse('sergio')).to eq('oigres')
      expect(solve.reverse(' ')).to eq(' ')
      expect(solve.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'return "fizz" for multiples of 3' do
      expect(solve.fizzbuzz(3)).to eq('fizz')
      expect(solve.fizzbuzz(9)).to eq('fizz')
    end
    it 'return "buzz" for multiples of 5' do
      expect(solve.fizzbuzz(10)).to eq('buzz')
      expect(solve.fizzbuzz(20)).to eq('buzz')
    end
    it 'return "fizzbuzz" for multiples of 3' do
      expect(solve.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solve.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the number as sting for other cases' do
      expect(solve.fizzbuzz(7)).to eq('7')
      expect(solve.fizzbuzz(11)).to eq('11')
    end
  end
end
