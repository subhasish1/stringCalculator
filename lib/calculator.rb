require 'byebug'
class Calculator
    def add(str)

        return "" if str.empty?
        str_array = str.split(/[;,]/)
        integers_array = str_array.select { |item| item.match?(/^[-]?\d+$/) }.map(&:to_i)
        
        sum = 0
        exception_message = []
        allowed_to_calculate = true

        integers_array.each do |n|

            if n > 0 && allowed_to_calculate
                sum += n 
            else
                allowed_to_calculate ||= false
                exception_message << "negative numbers not allowed: #{n}"
            end
        end
        exception_message.empty? ? sum : exception_message.join(',')
    end
end