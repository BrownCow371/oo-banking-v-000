class Transfer
  # your code here
  attr_accessor :status
  attr_reader :amount, :sender, :receiver
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver= receiver
    self.status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end  

  def execute_transaction
    if self.valid && self.status == "pending"
      sender.balance =+ amount
      receiver.balance =- amount
      self.status = "complete"
    end  
  end
  
end
