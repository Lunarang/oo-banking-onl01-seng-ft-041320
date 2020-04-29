class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  
  def initialize (sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    if @sender.valid? == TRUE && @receiver.valid? == TRUE
      TRUE
    else 
      FALSE 
    end
  end
  
  def execute_transfer
    if self.valid? == TRUE 
      @sender.balance -= @amount
      @receiver.balance += @amount
      self.status = "complete"
    else 
      "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    end
  end
  
end
