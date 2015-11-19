mystring = 'Hello!'
result = ''

fail = 0
until fail == "100" or mystring == '' do
  fail += 1
  mystring.match( %r{(.$)} )
  break if $~ == nil
  result += $~[1]
  mystring = mystring.chomp( $~[1] )
end

puts result
