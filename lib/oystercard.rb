class Oystercard 

  MAX_CAPACITY = 90
  MIN_CAPACITY = 1
  MIN_FARE = 1 

  attr_reader :balance 
  attr_accessor :in_use

  def initialize 
    @balance = 0
    @in_use = false
  end 

  def top_up(money)
    fail "Maximum balance of #{MAX_CAPACITY} exceeded" if @balance + money > MAX_CAPACITY
    @balance += money
  end 

  def in_journey?
    if @in_use == false 
      return false 
    else 
      return true 
    end 
  end 

  def touch_in 
    fail "balance is below #{MIN_CAPACITY}" if @balance < MIN_CAPACITY
    @in_use = true
  end 

  def touch_out
    deduct(MIN_FARE)
    @in_use = false
  end 

  private 

  def deduct(money)
    @balance -= money
  end 

  

  
end  


#fail if ... 
#constant = maximum balance 