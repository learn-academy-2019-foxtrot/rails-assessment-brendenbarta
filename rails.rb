# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

def hello_world language
    if language == "es"
        puts "Hola, Mundo"
    elsif language == "de"
        puts "Hallo Welt"
    elsif language == "ru"
        puts "Privet, mir"
    elsif language == "ja"
        puts "Kon'nichiwa sekai"
    else
        puts "Hello, World"
    end
end

hello_world "es"
hello_world "de"
hello_world "ru"
hello_world "ja"
hello_world "random"

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'
def assign_grade number
  case number
  when 90...100
    "A"
  when 80...90
    "B"
  when 70...80
    "C"
  when 60...70
    "D"
  when 0...60
    "F"
  end
end

number 78
number 56

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'


def pluralizer string, n
    if n == 1 
        puts "#{n} #{string}"
    elsif n > 1 || n==0
        puts "#{n} #{string}s"
    end
end

pluralizer "tree", 6
pluralizer "frog", 3
pluralizer "dogs", 7


# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
def pluralizer string, number
    if n == 1 
        puts "#{number} #{string}"
    elsif string == "person"
        puts  "#{number} people"
    elsif string == "child"
        puts  "#{number} children"
    elsif string == "goose"
        puts  "#{number} geese"
    elsif n > 1 
        puts "#{number} #{string}s"
    end
end

pluralizer "person", 1
pluralizer "person", 7
pluralizer "goose", 5
pluralizer "goose", 1
pluralizer "child", 3
pluralizer "child", 1