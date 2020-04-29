class Transfer
  attr_accessor :status, :sender, :receiver, :transfer_amount
  
  def initialize (sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @status = "pending"
    @transfer_amount = amount
  end
  
end
