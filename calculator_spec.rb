require_relative 'calculator'

RSpec.describe Calculator do
  describe '.add' do
    context 'with valid input' do
      it 'returns 0 for an empty string' do
        expect(Calculator.add([""])).to eq([0])
      end

      it 'returns the number itself for a single number' do
        expect(Calculator.add(["1"])).to eq([1])
      end
    end
  end
end
