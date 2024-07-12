require './lib/calculator.rb'

describe Calculator do
   subject {Calculator.new}

    context 'valid string without negative number' do
        let(:str) { "2,3,4" }
        it 'when string element separated by comma' do
            expect(subject.add(str)).to eql(9)
        end
    end

end