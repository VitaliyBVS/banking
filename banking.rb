cd# Программа имитации банковского счета
# Добавить в программу 
# создание нового счета пользователя,перевод между существующими счетами, база данных пользователей

require_relative 'lib/lib.rb'

puts "Программа имитации банковского счета"

checking_account = Account.new("Mark",2_000_000)

puts "Введите имя пользователя:"
check = gets.chomp 

if check == checking_account.name
    puts "Введите PIN код" 
    check_pin = gets.chomp # сделать замену показа символов звездочками "****" 
    if checking_account.pin_true(check_pin.to_i)
        cls
        puts "Введите номер действия:
              1.Запрос баланса. 
              2.Пополнение счета.
              3.Снятие наличных. 
              4.Перевод " # todo
        number = gets.chomp
        case number.to_i 
        when 1 then checking_account.display_balance(1234)
        when 2 then checking_account.refill(1234)
        when 3 then checking_account.withdraw(1234)
        when 4 then puts "Раздел находится в разработке"
        else puts "Вы ввели номер не допустимой операции"
        end
    else 
        puts "Access denied: incorrect PIN."    
    end 
else 
  puts "Неверное имя пользователя или такого пользователя несуществует."
end 

