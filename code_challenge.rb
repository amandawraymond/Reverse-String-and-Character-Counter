class String

  def initialize(string)
    @string = string
    @array_of_string = string.split("")
    @length = string.length
  end

  def letter_counts
    @string.downcase.scan(/\w/).inject(Hash.new(0){|character, count| character[count] += 1; character}
  end

  def reverse
    reverse = []
    string = @array_of_string
    number = 0
    while number < @length
      reverse << string.pop
      number += 1
    end
    reverse
  end 

  def print_reverse
    puts reverse.join("")
  end

  def print_letter_counts
    letter_counts.each do |key, value|
      puts "#{key}: #{value}"
    end
  end

end

example_one = String.new("Hello")
example_one.print_reverse

example_two = String.new("abacca")
example_two.print_letter_counts






