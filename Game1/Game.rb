puts 'Выберите фигуру: 0 - камень, 1 - ножницы, 2 - бумага'

figures = ['камень', 'ножницы', 'бумага']

computerChoice = rand(3)
userChoice = gets.to_i

puts 'Вы выбрали: ' + figures[userChoice]
puts 'Компьютер выбрал: ' + figures[computerChoice]

if userChoice == computerChoice
    puts 'Выбраны одинаковые фигуры, результат - ничья'
elsif userChoice == 0 && computerChoice == 1
    puts 'Камень бъет ножницы, результат - вы победили'
elsif userChoice == 1 && computerChoice == 2
    puts 'Ножницы режут бумагу, результат - вы победили'
elsif userChoice == 2 && computerChoice == 0
    puts 'Бумага накрывает камень, результат - вы победили'
elsif userChoice == 1 && computerChoice == 0
    puts 'Камень бъет ножницы, результат - вы проиграли'
elsif userChoice == 2 && computerChoice == 1
    puts 'Ножницы режут бумагу, результат - вы проиграли'
elsif userChoice == 0 && computerChoice == 2
    puts 'Бумага накрывает камень, результат - вы проиграли'

end