#write your code here
def ftoc(temp)
  ((temp - 32) / 1.8).round(1)
end

def ctof(temp)
  (temp * 1.8 + 32).round(1)
end
