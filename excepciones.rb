
def errorRescue
    puts "Hola Mundo" + 34
  rescue Exception => msg
    puts msg
end

def inverse(x)
  raise ArgumentError, 'Debe ser distinto de cero' unless x != 0
  1.0 / x
end

puts "Usandos Rescue:"
errorRescue

puts "Usandos raise:"

puts inverse(1)
