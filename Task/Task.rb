system("cls")
puts "Input Data:"
string = gets.chomp

openBrackets = ["(", "[", "{"]
closeBrackets = [")", "]", "}"]

res = true
stack = []
for s in string.split("")
    index = openBrackets.index(s)
    if index != nil # Если символ находится в массиве открывающихся скобок, заносим его в стек
        stack.push(s)
    elsif !closeBrackets.include?(s) # Если символ не находится в массиве открывающихся и закрывающихся скобок, то пропускаем символ
        next
    else # Если символ - это закрывающая скобка, то проверяем правильность последовательности
        index = closeBrackets.index(s)
        temp = stack.pop()

        if index != openBrackets.index(temp)
            res = false
            break
        end
    end
end

if res
    puts "\"#{string}\" => True"
else
    puts "\"#{string}\" => False"
end