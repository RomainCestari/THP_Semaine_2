def multiple

a = [*1..1000]
b = a.keep_if {|i| i%3==0 || i%5==0}.sum
end
puts multiple
