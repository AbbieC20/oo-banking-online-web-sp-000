class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :BankAccount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender_valid = BankAccount.new(self.sender).valid?
    receiver_valid = BankAccount.new(self.receiver).valid?
    if sender_valid == true && receiver_valid == true
      return true
    end
  end

  def execute_transaction
    if self.valid? == true
      @sender.balance = @sender.balance - @amount
      @receiver.balance = @receiver.balance + @amount
      @status = "complete"
    else
      puts "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

end #ClassEnd

# def execute_transaction
#   moves amount from sender to receiver
#   only happens once
#   if sender does not have the funds (not valid) reject transfer
# end

# def reverse_transfer
#   reverse the transfer
#   only if this is an executed transfer
# end
