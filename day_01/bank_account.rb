# class BankAccount
#   def initialize (name, amount, type)
#     @holder_name = name
#     @amount = amount
#     @type = type
#   end
#
#   def holder_name
#     return @holder_name
#   end
#
#   def amount
#     return @amount
#   end
#
#   def type
#     return @type
#   end
#
#   def set_holder_name(new_name)
#     @holder_name = new_name
#   end
#
#   def set_amount(new_amount)
#     @amount = new_amount
#   end
#
#   def set_type(new_type)
#     @type = new_type
#   end
# end

class BankAccount
  attr_reader :amount
  attr_accessor :type, :holder_name

  def initialize (name, amount, type)
    @holder_name = name
    @amount = amount
    @type = type
  end

  def pay_in(incoming_amount)
    @amount += incoming_amount
  end

  def withdraw(outgoing_amount)
    @amount -= outgoing_amount
  end

  def pay_monthly_fee
    if @type == "personal"
      @amount -= 10
    else
      @amount -= 50
    end
  end
end

# BELOW IS A LIST OF FAR BETTER EXAMPLES

# def pay_monthly_fee
#   @type == "business" ? @amount -= 50 : @amount -= 10
# end

# def pay_monthly_fee
#   case @type
#   when "business"
#     @amount -= 50
#   when "personal"
#     @amount -- 10
#   end
# end
#
# def pay_monthly_fee
#   @amount -= 50 if @type == "business"
#   @amount -= 10 if @type == "personal"
# end
#
# def pay_monthly_fee
#   charges = {
#     "business" => 50,
#     "personal" => 10
#   }
#   @balance -= charges[ @type ]
# end
