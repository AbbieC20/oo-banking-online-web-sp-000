class BankAccount
  attr_accessor :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

end

# initialize
# a Bank Account
# a name Y
# balance of 1000 Y
# status of 'open'Y
# end

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
