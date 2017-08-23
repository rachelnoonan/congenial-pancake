require 'calculator'
describe Calculator do

  describe 'add' do
    context 'all positive test cases' do
      it 'given two numbers 1,3 return 4' do
        expect(Calculator.add(1,3)).to eq(4)
      end
      it 'given two numbers 0,3 return 3' do
        expect(Calculator.add(0,3)).to eq(3)
      end
      it 'given two numbers 0,0 return 0' do
        expect(Calculator.add(0,0)).to eq(0)
      end
      it 'given two numbers -5,0 return -5' do
        expect(Calculator.add(-5,0)).to eq(-5)
      end
      it 'given two numbers -1,-3 return 4' do
        expect(Calculator.add(-1,-3)).to eq(4)
      end
      # Review context include more scenarios for tests
    end
    context 'all expected failure test cases' do
      it 'given string:bob and int:0 input expect exception of type ArgumentError' do
        expect(Calculator.add('bob',0)).to raise_error(ArgumentError)
      end
      end
    end
  # Review context include more scenarios for failing tests
  end
end