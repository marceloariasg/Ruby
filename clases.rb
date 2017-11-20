class Persona
attr_accessor :edad

  #metodo constructor , edad por defecto = 5
  def initialize(edad = 5)
    @edad = edad
  end

  #metodos de instancia
  def envejecer
    @edad+=1
  end

  #metodos de instancia
  def mostrar_edad
    puts @edad
  end

  #metodo de clases
  def self.metodo_de_clase
    puts "soy un metodo de clase"
  end

end

p1 = Persona.new
10.times do
  p1.envejecer
end
p1.mostrar_edad

p2 = Persona.new(21)
10.times do
  p2.envejecer
end

p2.mostrar_edad
p2.edad = 1   #se modifica variable
puts p2.edad  #se muestra la variable

p3 = Persona.metodo_de_clase
puts p3

p4 = Persona.new(24).class.metodo_de_clase
puts p4
