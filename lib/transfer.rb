class Transfer
  attr_accessor :status, :sender, :receiver, :transfer_amount
  
  def initialize (sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @status = "pending"
    @transfer_amount = amount
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
      @sender.balance -= @transfer_amount
      @receiver.balance += @transfer_amount
      self.status = "complete"
    else 
      
    end
  end
  
end
