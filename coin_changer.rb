def coin(cents)
  coin_type = ""
  divisors = [25,10,5,1]
  quotient = 0
  remainder = 0
  quarters = 0
  dimes = 0
  nickels = 0
  pennies = 0
  change_hash = Hash.new
  cents = cents.to_i
    if cents > 0
      divisors.each do |number|
        quotient, remainder = cents.divmod(number) #calculates how many of given number go into cents, then returns the remainder
          if number == 25
            coin_type = "quarters"
            quarters += quotient
          elsif number == 10
            coin_type = "dimes"
            dimes += quotient
          elsif number == 5
            coin_type = "nickels"
            nickels += quotient
          elsif number == 1
            coin_type = "pennies"
            pennies += quotient
          end
            cents = remainder
          if quarters > 0
            change_hash.merge!({coin_type => quarters})
          elsif dimes > 0
            change_hash.merge!({coin_type => dimes})
          elsif nickels > 0
            change_hash.merge!({coin_type => nickels})
          elsif pennies > 0
            change_hash.merge!({coin_type => pennies})
          end
            quarters = 0
            dimes = 0
            nickels = 0
            pennies = 0
      end
        return change_hash
    end
end
