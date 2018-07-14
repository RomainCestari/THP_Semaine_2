def who_is_bigger(a, b, c)
  return "nil detected" if [a, b, c].include? nil
  dic = {a => "a", b => "b", c => "c"}
  "#{dic[[a, b, c].max]} is bigger"
end

def reverse_upcase_noLTA(str)
  str = str.reverse.upcase.tr('LTA', '')
end

def array_42(arr)
  arr.include? 42
end

def magic_array(arr)
  arr.flatten.map{|x| x*2}.select{|x| x%3!=0}.uniq.sort
  # arr.flatten.map{|x| x * 2}.select{|x| x % 3 != 0}.uniq.sort
end
# to verify that it is less than 55 char long enter irb:
# "arr.flatten.map{|x| x*2}.select{|x| x%3!=0}.uniq.sort".length
