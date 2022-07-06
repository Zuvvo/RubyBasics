
class Account
  attr_reader :name, :balance

  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end

  public

  def display_balance (pin_number)
    if pin_number == pin
      puts "$#{@balance}"
    else
      puts pin_error
    end
  end

  def withdraw (pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  def deposit(pin_number, amount)
    @balance += amount if pin_number == pin
  end

end

checking_account = Account.new("Mat")
checking_account.deposit(1234, 500)
checking_account.display_balance(1234)