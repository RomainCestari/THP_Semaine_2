def find_next_syllable(str)
  str = str.split('')
  i = 0
  while !["a", "e", "i", "o", "u", "y"].include? str[i]
    i += 1
  end
  return i + 1 if str[i] == 'u' && str[i - 1] == 'q'
  i
end

def translate_word(str)
  return str + "ay" if ["a", "e", "i", "o", "u", "y"].include? str[0]
  str.slice(find_next_syllable(str), str.length) + str.slice(0, find_next_syllable(str)) + "ay"
end

def translate(str)
  str.split(' ').map{|word| translate_word(word)}.join(' ')
end
