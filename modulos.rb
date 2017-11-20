module MiModulo
  MICONSTANTE = 999

  def self.MiFuncion
    puts "HOLA MUNDO"
  end

  class MiClase
    def initialize()
        puts "MI CLASE"
    end
  end

end

puts "\n\nMODULOS \n"

MiModulo.MiFuncion

puts MiModulo::MICONSTANTE

MiModulo::MiClase.new
#--------------------------------------------------------------------------
#MIXING
puts "\n\nMIXING \n"

module Nadador
  def nadar
    puts "yo soy nadador"
  end
end

class Pez
  include Nadador
end

nemo = Pez.new
nemo.nadar

#--------------------------------------------------------------------------
puts "\n\nEJEMPLOS \n"

module Vehiculo
  class Automovil
      def initialize(modelo)
          @modelo = modelo
          puts 'auto nuevo!!!'
      end
  end

  class Moto
      def initialize(ano)
          @ano = ano
          puts 'moto nueva!!!'
      end
  end

  class Camion
      def initialize(cilindrada)
          @cilindrada = cilindrada
          puts 'camion nuevo!!!'
      end
  end
end

Vehiculo::Camion.new(5000)
