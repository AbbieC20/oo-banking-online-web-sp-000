class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(money_deposit)
    @balance = @balance + money_deposit
  end

  def display_balance
    return "Your balance is $#{@balance}."
  end

end #ClassEnd

# display balance
# show balance
# end

# valid?
# is true when status = open and balance > 0
# end

# close Account
# sets status to closed.
# end
