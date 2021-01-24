class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :bankaccount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    self.sender.BankAccount.valid?
    self.receiver.BankAccount.valid?
  end

end #ClassEnd

# def valid?
#   are both accounts (i.e. sender & receiver) are valid
#   referring to BankAccount class
# end

# def execute_transaction
#   moves amount from sender to receiver
#   only happens once
#   if sender does not have the funds (not valid) reject transfer
# end

# def reverse_transfer
#   reverse the transfer
#   only if this is an executed transfer
# end
