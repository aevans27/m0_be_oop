# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    def initialize(name)
        @name = name
        @color = "Silver"
    end

    def say(phrase)
        p "*~*#{phrase}*~*"
    end
end

horse = Unicorn.new("Bubbles")
p horse
horse.say("Mexican food!")
p horse
#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

ted = Vampire.new("Tedvula", "Tiger")
p ted
ted.drink
p ted
#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    def initialize(name, rider, color)
        @name = name.to_s
        @rider = rider.to_s
        @color = color.to_s
        @is_hungry = true
    end

    def eat(times_fed)
        if times_fed >= 4
            @is_hungry = false
        end
    end
end

dragoon = Dragon.new("Estinien", "dragon-rider", "green")
p dragoon
dragoon.eat(5)
p dragoon
#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize(name, disposition)
        @name = name.to_s
        @disposition = disposition.to_s
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = false
        if name == "Frodo"
            @has_ring = true
        end 
    end

    def celebrate_birthday
        @age += 1
        if @age >= 101
            @is_old = true
        elsif @age >=33
            @is_adult = true
        end
    end
end

hobby = Hobbit.new("Samwise Gamgee", "The best Hobbit")
p hobby
hobby.celebrate_birthday
p hobby
