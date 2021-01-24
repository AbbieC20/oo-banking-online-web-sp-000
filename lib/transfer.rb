class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :BankAccount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender_valid = self.sender.valid?
    receiver_valid = self.receiver.valid?
    if sender_valid == true && receiver_valid == true
      return true
    else
      return false
    end
  end

  def execute_transaction
    if self.valid? == true && self.status != "complete"
      @sender.balance = @sender.balance - @amount
      @receiver.balance = @receiver.balance + @amount
      self.status = "complete"
    elsif 
      return "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    else
      return "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    end
  end

  def reverse_transfer
    if self.status == "complete"
      @sender.balance = @sender.balance + @amount
      @receiver.balance = @receiver.balance - @amount
      @status = "reversed"
    end
  end

end #ClassEnd
