class Logger
    @instance = new
  
    # Делаем конструктор приватным
    private_class_method :new
  
    # Статический метод, управляющий доступом к экземпляру одиночки.
    def self.instance
      @instance
    end
  
    # Повсеместно использующаяся функциональность
    def LogMessage(msg)
        
      puts "Message logged: \"#{msg}\" "
    end
end

class Test
    def testLogger
        system("cls")
        singleton = Logger.instance
        singleton.LogMessage("Hello, World!")
    end
end

t = Test.new
t.testLogger