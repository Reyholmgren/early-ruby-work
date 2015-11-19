#implement array methods without using built in array methods
#
#1.  Reverse the contents of a string
#2.  Return an array of integers as an array of equivilent strings
#3.  Given an array of integers and a multiplier passed in to a method
#     - retrun an array of integers  multiplied by the multiplier
#4.  Take a string and an offset (integer) shift all letters of the string to the 
# right by the number of the offset

# 1a)
# ​
# Take in an array 
# return the array reversed

# strings = ['27', '89', '14']
# puts strings
# puts "----"
# strings = strings.reverse
# puts strings

# puts '------'

# array = [72, 98, 14]
# puts array
# puts '----'
# array = array.to_s
# puts array

# puts '---'

def reverse_string(string)
  reversed_string = ""
  (string.length - 1).downto(0) do |index|
      reversed_string << string[index]    
  end
  puts reversed_string
end

reverse_string("Jake")


def offset_string(string, offset)
  offset = offset % string.length
  front = string.slice(string.size - offset, offset)
  back = string.slice(0, string.size - offset)
  puts "#{front}#{back}"
end

offset_string("jake", 1)

# ejak




