# frozen_string_literal: true

class Calculator
  class << self
    def add(string_numbers)
      string_numbers.map { |string_number| evaluate_string(string_number) }
    end

    private

    def evaluate_string(string_number)
      return 0 if string_number.empty?

      string_number.split(/#{delimiter}|\n/).map(&:to_i).sum
    end

    def delimiter
      str = ','
      if @string_number.start_with?('//')
        str, _numbers = @string_number.split("\n", 2)
        str = str[2..]
      end
      str
    end
  end
end
