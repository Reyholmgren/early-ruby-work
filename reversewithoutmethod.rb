def reverse_string(string)
  reversed_string = ""
  (string.length - 1).downto(0) do |index|
      reversed_string << string[index]    
  end
  puts reversed_string
end

reverse_string("Jake")
