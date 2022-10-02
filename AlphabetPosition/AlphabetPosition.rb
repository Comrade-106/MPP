system('cls')

alphabet = "abcdefghijklmnopqrstuvwxyz"
puts 'Введите текст:'
text = gets.chomp.downcase

puts "\nРезультат:"
res = ""

for l in text.split("")
    t = alphabet.index(l)
    if t == nil
        next
    else
        res += (t + 1).to_s + " "
    end
end

puts res + "\n\n"