class BankAccount
  attr_accessor :balance, :status
  attr_reader :account_name
  
  def initialize(account_name)
    @account_name=account_name
    self.balance = 1000
    self.status= "open"
  end

  def deposit(amount)
    
  end
end
