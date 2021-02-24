require "pry"

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
       
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
          
        @happiness = 0 if @happiness < 0
  
    end

   def hygiene=(hygiene)
      if hygiene > 10
        @hygiene = 10
      elsif hygiene < 0
        @hygiene = 0
      else 
        @hygiene = hygiene
     end
  
   end

    def happy?
        if @happiness > 7
          true
        else
            false
        end
    end
    #binding.pry

    def clean?
        if hygiene > 7 
            true
        else
            false
        end
       
    end

    def get_paid(salary)
        counter = 0
        @bank_account += salary
        "all about the benjamins"
    end
    
    def take_bath
        self.hygiene = @hygiene + 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end


   def work_out
       self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        '♪ another one bites the dust ♫'
   end

    def call_friend(friend)
        [self, friend].each do |instance| 
            instance.happiness += 3
        end
          "Hi #{friend.name}! It's #{self.name}. How are you?"
     end


   def start_conversation(friend, topic)
        if topic == "politics"
            [self, friend].each do |instance| 
                instance.happiness -= 2 
            end
                "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            [self, friend].each do |instance| 
                instance.happiness += 1
            end
             "blah blah sun blah rain"

        else
             "blah blah blah blah blah"
    end
 end
end


