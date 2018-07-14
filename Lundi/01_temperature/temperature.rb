def ftoc(temperature)
  ((temperature -32) / (1.8)).round
end

ftoc(32)
  

def ctof(x)
  (x) * (1.8) + 32
end

ctof(0)
