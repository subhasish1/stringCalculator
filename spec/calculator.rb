require './lib/calculator.rb'

describe Calculator do
   subject {Calculator.new}

    context 'valid string without negative number' do
        it 'when string element separated by comma' do
            str = "2,3,4"
            expect(subject.add(str)).to eql(9)
        end

        it 'when delimiter is ";"' do
            str = "2;3;4"
            expect(subject.add(str)).to eql(9)
        end

        it 'when string contains others chars' do
            str =  "//;\n1;2"
            expect(subject.add(str)).to eql(3)
        end

        it 'when string contains empty chars' do
            str =  ""
            expect(subject.add(str)).to eql("")
        end
        it 'when string contains empty only one digit' do
            str =  "//;2"
            expect(subject.add(str)).to eql(2)
        end

    end

    context 'invalid string with negative number' do

        it 'when string contain single negative number' do
            str = '-6'
            expect(subject.add(str)).to eql("negative numbers not allowed: -6")
        end

        it 'when string contain multiple negative number' do
            str = '-6,5,6,-8'
            expect(subject.add(str)).to eql("negative numbers not allowed: -6,negative numbers not allowed: -8")
        end
    end
end