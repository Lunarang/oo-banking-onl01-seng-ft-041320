class Transfer
  attr_accessor :status
  
  def initialize (sender, receiver)
    @sender = sender 
    @receiver = receiver 
    @status = "pending"
  end
  
end
