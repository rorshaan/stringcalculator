require_relative 'calculator'

RSpec.describe Calculator do
  describe '.add' do
    context 'with valid input' do
      it 'returns 0 for an empty string' do
        expect(Calculator.add([""])).to eq([0])
      end
    end
  end
end
