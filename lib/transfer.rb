class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  
  def initialize (sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    if @sender.valid? == TRUE && @receiver.valid? == true
      true
    else 
      
    end
  end
  
  def execute_transaction
    if self.valid? == true && self.status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      self.status = "complete"
    else 
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
end
