class Calculator
    def add(str)
        str_array = str.split(/[;,]/)
        integers_array = str_array.select { |item| item.match?(/^[-]?\d+$/) }.map(&:to_i)
         
        integers_array.sum
    end
end