require 'calculator'
RSpec.describe Calculator do
  let('calc') { Calculator.new }

  describe 'add' do
    context 'all positive test cases' do
      it 'given two numbers 1,3 return 4' do
        expect(calc.add(1, 3)).to eq(4)
      end
      it 'given two numbers 0,3 return 3' do
        expect(calc.add(0,3)).to eq(3)
      end
      it 'given two numbers 0,0 return 0' do
        expect(calc.add(0,0)).to eq(0)
      end
      it 'given two numbers -5,0 return -5' do
        expect(calc.add(-5,0)).to eq(-5)
      end
      it 'given two numbers -1,-3 return 4' do
        expect(calc.add(-1,-3)).to eq(4)
      end
      it 'given float and integer 10.58, 11 return 21.58' do
        expect(calc.add(10.58,11)).to eq(21.58)
      end
      # Review context include more scenarios for tests
    end
    context 'all expected failure test cases' do
      it 'given string:bob and int:0 input expect exception of type ArgumentError' do
        expect { calc.add('bob', 0) }.to raise_error(ArgumentError)
      end

      it 'given '' and int:20 input expect exception of type ArgumentError' do
        expect(calc.add('',20)).to raise_error(ArgumentError)
      end
      it 'given null and int:20 input expect exception of type ArgumentError' do
        expect(calc.add(null,20)).to raise_error(ArgumentError)
      end
      end
    end
  # Review context include more scenarios for failing tests
  end
