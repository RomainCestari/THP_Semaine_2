def who_is_bigger(a, b, c)
  t = [a, b, c]
  if a == nil || b == nil || c == nil
     "nil detected"

  elsif
    b > a && b > c
    "b is bigger"
  elsif
    a > b && a > c
    "a is bigger"
  elsif
    c > a && c > b
    "c is bigger"

    end
  end

def reverse_upcase_noLTA (sentence)
  sentence.upcase.reverse.delete "L""T""A"
end

def array_42 (a)
   a.include?(42)
end

def magic_array (x)
  x.flatten!
  x.uniq.sort.delete_if {|i| i%3 ==0}.map {|i| i * 2}
end
