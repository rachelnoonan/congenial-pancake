require 'calculator'
describe Calculator do

  describe 'add' do
    context 'all positive test cases' do
      it 'given two numbers 1,3 return 4' do
        expect(Calculator.add(1,3)).to eq(4)
      end
    end
    context 'all expected failure test cases' do
      it 'given string:bob and int:0 input expect exception of type ArgumentError' do
        expect(Calculator.add('bob',0)).to raise_error(ArgumentError)
      end
    end

  end
end