puts 'Введите первое число: '
begin
    a = gets.to_i
rescue
    puts 'Вы ввели не корректное число'
end

puts 'Введите второе число: '
begin
    b = gets.to_i
rescue
    puts 'Вы ввели не корректное число'
end

puts 'Выберите действие: '
op = gets.chomp

if op == '+'
    puts "#{a} + #{b} = #{a+b}"
elsif op == '-'
    puts "#{a} - #{b} = #{a-b}"
elsif op == '*'
    puts "#{a} * #{b} = #{a*b}"
elsif op == '/'
    begin
        res = a / b
        puts "#{a} / #{b} = #{res}"
    rescue ZeroDivisionError
        puts 'Нельзя делить на 0'
    end

else
    puts 'Вы ввели не корректную операцию!'
end
