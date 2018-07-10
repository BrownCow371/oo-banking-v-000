class BankAccount
  attr_accessor :balance, :status
  attr_reader :account_name

  def initialize(account_name)
    @account_name=account_name
    self.balance = 1000
    self.status= "open"
  end

  def deposit(amount)
    self.balance =+ amount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    self.status == open && self.balance > 0
  end

  def close_account
    self.status= "closed"
  end
end
