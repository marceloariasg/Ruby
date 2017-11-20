class Humano
  attr_reader :nombre, :edad

  def initialize(nombre)
    @nombre = nombre
    @edad = 1
  end
  def envejecer
    puts "envejecer de la clase Humano"
    @edad +=5
  end

  def saluda
    puts "HOLA MUNDO"
  end
end

class Persona < Humano
  def envejecer
    puts "envejecer de la clase Persona"
    @edad +=20
    super
  end
end

puts "NORMAL"
p = Humano.new('marcelo')
p.envejecer
puts p.edad

puts "USANDO HERENCIA"
#usando clase Persona heredada
h = Persona.new('juan')
h.envejecer
puts h.edad
puts h. saluda

#para ver las clases heredadas
print Persona.ancestors
puts ""
puts Persona.new('marce').is_a? Persona
puts Persona.new('marce').is_a? Humano
puts Persona.new('marce').is_a? Numeric
