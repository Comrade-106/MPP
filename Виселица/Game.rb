$attemts = 5
$enteredLetters = []
$temp = []
defaultWords = ["слово", "корова", "подушка"]

def getLetter
    puts 'Введите одну букву:'
    letter = STDIN.gets.chomp

    while letter == "" || letter.length > 1 || $enteredLetters.include?(letter)
        puts 'Вы ввели некорректный символ или букву, которую уже вводили. Попробуйте снова:'
        letter = STDIN.gets.chomp
    end

    $enteredLetters[$enteredLetters.length()] = letter
    
    return letter
end

def createEmptyWord(w)
    for l in w.split("")
        $temp[$temp.length()] = "_"
    end
end

def printStatus
    w = ""
    for l in $temp
        w += l + " "
    end
    puts "Количество попыток: #{$attemts}, слово: #{w}"
end

def openLetter(l)
    offset = 0
    index = $word.index(l, offset)
    while index != nil
        $temp[index] = l
        offset = index + 1
        index = $word.index(l, offset)
    end
end

def tryAddLetter(l)
    if $word.include?(l)
        openLetter(l)
    else
        $attemts -= 1
    end
end

def wordFilled
    if $temp.include?("_")
        return false
    else
        return true
    end
end

$word = ARGV[0]
done = false

if($word == nil || $word == "")
    $word = defaultWords[rand(defaultWords.length)]
end

system('cls')
createEmptyWord($word)

while done == false && $attemts > 0
    system('cls')
    printStatus
    letter = getLetter
    tryAddLetter(letter)
    done = wordFilled

    if $attemts <= 0
        puts "Вы проиграли! Правильное слово: #{$word}"
    end

    if done
        system('cls')
        puts "Вы выиграли! Загаданное слово: #{$word}"
    end
end