def time_string (x)
[x / 3600, x / 60 % 60, x % 60].map { |t| t.to_s.rjust(2,'0') }.join(':')
end
