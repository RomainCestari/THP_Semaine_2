def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, nb = 2)
  Array.new(nb, str).join(" ")
end

def start_of_word(str, nb)
  str.slice(0, nb)
end

def first_word(str)
  str.split(' ')[0]
end

def titleize(str)
  str.split(' ').each_with_index.map{|x, i|
    if i == 0
      x.capitalize
    elsif ["and", "or", "the", "of", "a", "an"].include? x
      x
    else
      x.capitalize
    end}
    .join(' ')
end
