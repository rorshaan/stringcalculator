# frozen_string_literal: true

class Calculator
  class << self
    def add(string_numbers)
      string_numbers.map { |string_number| evaluate_string(string_number) }
    end

    private

    def evaluate_string(string_number)
      return 0 if string_number.empty?

      @string_number = string_number
      validate_numbers
    end

    def validate_numbers
      return 'Invalid Input' unless valid_input?

      numbers = @string_number.split(/#{delimiter}|\n/).map(&:to_i)
      negatives = numbers.select(&:negative?)
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

      numbers.sum
    end

    def valid_input?
      numbers = @string_number.split(delimiter)
      numbers.select { |num| num.eql?("\n") }.empty?
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
