class Oystercard 

  MAX_CAPACITY = 90

  attr_reader :balance 
  

  def initialize 
    @balance = 0
    
  end 

  def top_up(money)
  fail "Maximum balance exceeded" if money + balance > MAX_CAPACITY
    @balance += money

  end 
  
  
end  


#fail if ... 
#constant = maximum balance 
