def coin(cents)
  coin_type = ""
  divisors = [1]
  quotient = 0
  remainder = 0
  pennies = 0
  change_hash = Hash.new
  cents = cents.to_i
    if cents > 0
      divisors.each do |number|
        quotient, remainder = cents.divmod(number)
          if number == 1
            coin_type = "pennies"
            pennies += quotient
          end
            cents = remainder
          if pennies > 0
            change_hash.merge!({coin_type => pennies})
          end
            pennies = 0
      end
        return change_hash
    end
end
