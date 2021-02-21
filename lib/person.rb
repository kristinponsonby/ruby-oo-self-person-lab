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

    def happiness=(happiness)
 
        if happiness > 10
           @happiness = 10
        elsif happiness < 0
           @happiness = 0
        else 
            @happiness = happiness
        end
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
       self.happiness = @happiness + 3
       friend.happiness = @happiness + 3
     end


   def start_conversation(friend, topic)
        politics = @happiness -= 2
        weather = @happiness += 1
        other = @happiness
        if topic = politics
            "blah blah partisan blah lobbyist"
        elsif topic = weather
            "blah blah sun blah rain"
        else topic = other
            "blah blah blah blah blah"
        end
    end
end



