module Luhn
  #double every other
  def self.is_valid?(number)
    double_nums = []
    digits = number.to_s.split('').map(&:to_i)
    digits.reverse.each_with_index do |n, index|
      if index % 2 == 1 #so for every second index double the value 'n'
        double_nums << n*2
      else
        double_nums << n #otherwise put n back normally
      end
    end

    # p double_nums

    #minus 9 if double is equal or greater than 10
    thing = double_nums.map do |i|
      if i >= 10
         i - 9
      else
        i
      end
    end

    
    #add the digits
    sum = thing.inject(:+)

    modulo = sum % 10 
    p modulo 


    #check if sum is divisible by 10(valid)
    return sum % 10 == 0
  end
end


