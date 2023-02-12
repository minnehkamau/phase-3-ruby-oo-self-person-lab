# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def name
        @name
    end
    def bank_account
        @bank_account
    end
    def bank_account=(amount)
        @bank_account = amount
    end
    def happiness
        @happiness
    end
    def happiness=(amount)
        @happiness = [[0, [amount, 10].min].max, 10].min
    end
    def hygiene
        @hygiene
    end
    def hygiene=(amount)
        @hygiene = [[0, [amount, 10].min].max, 10].min
    end
    def happy?
        happiness > 7
    end
    def clean?
        hygiene > 7
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = hygiene + 4
       
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene = hygiene - 3
        self.happiness = happiness + 2
        '♪ another one bites the dust ♫'
    end
    def start_conversation(person, topic)
        if topic == "politics"
          self.happiness -= 2
          person.happiness -= 2
          return "blah blah partisan blah lobbyist"
        end
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(other_person, topic)
        case topic
        when "politics"
          self.happiness = @happiness - 2
          other_person.happiness = other_person.happiness - 2
          return "blah blah partisan blah lobbyist"
        when "weather"
          self.happiness = @happiness + 1
          other_person.happiness = other_person.happiness + 1
          return "blah blah sun blah rain"
        else
          return "blah blah blah blah blah"
        end
    end

    
end