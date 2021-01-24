class Transfer
  attr_accessor :sender, :receiver, :status, :transfer_amount

def initialize(sender, receiver, transfer_amount)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @transfer_amount = transfer_amount
end

end

# def initialize
#   has a sender
#   has a receiver
#   status of "pending"
#   transfer amount
# end

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
