# frozen_string_literal: true

class Calculator
  class << self
    def add(string_numbers)
      string_numbers.map { |string_number| evaluate_string(string_number) }
    end

    private

    def evaluate_string(string_number)
      return 0 if string_number.empty?

      string_number.split(',').map(&:to_i)
    end
  end
end