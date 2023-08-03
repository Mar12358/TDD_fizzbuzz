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
end
