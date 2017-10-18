require 'date'

zodiac = {
    :aquarius => {
        :element => "Air",
        :start_date => "January 20",
        :end_date => "February 18"
    },
    :pisces => {
        :element => "Water",
        :start_date => "February 19",
        :end_date => "March 20"
    },
    :aries => {
        :element => "Fire",
        :start_date => "March 21",
        :end_date => "April 19"
    },
    :taurus => {
        :element => "Earth",
        :start_date => "April 20",
        :end_date => "May 20"
    },
    :gemini => {
        :element => "Air",
        :start_date => "May 21",
        :end_date => "June 20"
    },
    :cancer => {
        :element => "Water",
        :start_date => "June 21",
        :end_date => "July 22"
    },
    :leo => {
        :element => "Fire",
        :start_date => "July 23",
        :end_date => "August 22"
    },
    :virgo => {
        :element => "Earth",
        :start_date => "August 23",
        :end_date => "September 22"
    },
    :libra => {
        :element => "Air",
        :start_date => "September 23",
        :end_date => "October 22"
    },
    :scorpio => {
        :element => "Water",
        :start_date => "October 23",
        :end_date => "November 21"
    },
    :sagittarius => {
        :element => "Fire",
        :start_date => "November 22",
        :end_date => "December 21"
    },
    :capricorn => {
        :element => "Earth",
        :start_date => "December 22",
        :end_date => "January 19"
    }
}

chinese_animal_zodiac = ["Rat", "Ox",
"Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey",
"Rooster", "Dog", "Pig"]

# Print out an array of just the 12 zodiac signs.
zodiac_array = []
zodiac.each {|key, val| zodiac_array.push(key.to_s)}
puts zodiac_array.to_s

# Convert all the dates from class String to class Date.

start_date_array = []
end_date_array = []

zodiac.each do |key, val|
   start_date_array.push(Date.parse(val.fetch(:start_date)))
   end_date_array.push(Date.parse(val.fetch(:end_date)))
end
puts start_date_array.inspect
puts end_date_array.inspect

# Create a new hash where the keys are the elements and the value is an array of the signs of each element. Print this out.
zodiac_elements = {
    :water => ["pisces", "cancer", "scorpio"],
    :fire => ["aries", "leo", "sagittarius"],
    :earth => ["taurus", "virgo", "capricorn"],
    :air => ["aquarius", "gemini", "libra"] 
}
puts zodiac_elements

# Go through the new hash and convert all zodiac sign names to all capital letters.

zodiac_elements.each do |key, val|
    val.map! {|word| word.capitalize}
end
puts zodiac_elements
# With the hash zodiac, for each sign, print out a sentence that has the following format: "The [name of sign], from [start date] to [end date] is a [element] sign."

zodiac.each do |key, val|
    puts "#{key.to_s.capitalize}, from #{val.fetch(:start_date)} to #{val.fetch(:end_date)} is a #{val.fetch(:element)} sign."
end

# Select and print out the name of the signs which have start dates in the second and third quarter of the year(April to September).
zodiac.each do |key,val|
    if Date.parse(val.fetch(:start_date)).between?((Date.parse('April')), (Date.parse('September')))
        puts key.to_s.capitalize
    end
end

# Partition the array chinese_animal_zodiac into two arrays. One should contain the strings that start with letters A-M. The other should contain strings that start with letters N-Z.
ch_grep_1 = chinese_animal_zodiac.grep(/^[A-M]/)
ch_grep_2 = chinese_animal_zodiac.grep(/^[N-Z]/)
puts ch_grep_1.inspect
puts ch_grep_2.inspect


# Create a new array of numbers where each number is a length of the strings in chinese_animal_zodiac. Add all these numbers to get the total.

new_array = chinese_animal_zodiac.map {|word| word.length}
puts new_array.to_s
reduced = new_array.reduce {|a,b| a + b}
puts reduced

# Sort the array chinese_animal_zodiac so that the shortest word is the first element and the longest word is the last element.
animal_sort = chinese_animal_zodiac.sort_by {|word| word.length}
puts animal_sort.inspect

# Print out all words that start with the letter "R".

grep_r = chinese_animal_zodiac.grep(/^R/)
puts grep_r.inspect






















