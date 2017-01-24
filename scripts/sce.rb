#!/root/.rbenv/shims/ruby

def expr1
  "return value of expr1."
end

def expr2
  puts "Not Short-circuit evaluation."
  "return value of expr2."
end

puts expr1 || expr2
