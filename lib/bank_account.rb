class BankAccount
  attr_accessor :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

def deposit(money_deposit)
  @balance = @balance + money_deposit
end

end #ClassEnd


# deposit
# can deposit money into account
# end

# display balance
# show balance
# end

# valid?
# is true when status = open and balance > 0
# end

# close Account
# sets status to closed.
# end
