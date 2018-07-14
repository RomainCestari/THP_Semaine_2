def echo (x)
  if x == "hello"
   "hello"
else x == "bye"
 "bye"
end
end

def shout (x)
  if x == "hello"
    x.upcase
else
  x =="hello world"
  x.upcase
end
end

def repeat(x, y = 2)
  if x = "hello "
    (x * y).rstrip
  end
end

def start_of_word(x, y)
  x.slice(0,y)
end

def first_word(x)
  x.split.first
end

def titleize (x)
  
  words_to_ignore = "and" "the"
  x.split.each{|i| i.capitalize! if ! words_to_ignore.include? i  }.join(' ')

  end
