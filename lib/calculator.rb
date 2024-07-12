class Calculator
    def add(str)

        return "" if str.empty?
        str_array = str.split(/[;,]/)
        integers_array = str_array.select { |item| item.match?(/^[-]?\d+$/) }.map(&:to_i)
        return integers_array[0] if  integers_array.size == 1
        integers_array.sum
    end
end