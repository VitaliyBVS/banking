class Account 
  attr_reader :name
  attr_reader :balance
  def initialize(name,balance=100)
    @name = name
    @balance = balance
  end
  def display_balance(pin_number) # Запрос баланса
    cls 
    puts pin_number == pin ? "Balance : $#{@balance}.": pin_error 
  end
  def withdraw(pin_number) # Снятие со счета  
    if pin_number == pin 
      cls
      puts "Снятие наличных"
      puts "Введите сумму:" 
      amount = gets.chomp.to_i 
      if @balance >= amount.to_i
         @balance -= amount.to_i 
         puts "Снято $#{amount}. Новый баланс: $#{@balance}."
      else 
         puts "На вашем счете недостаточно средств."
      end
    else 
      pin_error
    end 
  end
  def refill(pin_number) # Пополнение счета 
    if pin_number == pin
      cls 
      puts "Пополнение счета"
      puts "Внесите сумму:"
      plus = gets.chomp.to_i 
      @balance += plus.to_i
      puts "Внесено $#{plus}. Новый баланс: $#{@balance}."
    else 
      pin_error
    end
  end
  def pin_true(pin_number) # Проверка пин кода 
    pin_number == pin ? true : false 
  end
  private
  def pin
    @pin = 1234
  end
  def pin_error
    puts "Access denied: incorrect PIN."
  end
end

def cls 
  system "clear" or system "cls"
end