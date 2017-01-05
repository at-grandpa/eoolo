#!/root/.rbenv/shims/ruby

def expr1
  puts "method expr1"
  "return expr1"
end

def expr2
  puts "method expr2"
  "return expr2"
end

puts expr1 || expr2
