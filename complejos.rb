class ComplejosMutables
  attr_reader :a , :b
    def initialize(a, b)
      @a = a
      @b = b
    end

    def +(z2)
      @a += z2.a
      @b += z2.b
    end

    def to_s()
      "#{@a} + #{@b}i"
    end

end

z1 = ComplejosMutables.new(2, 3)
z2 = ComplejosMutables.new(2, 3)
z3 = z1 + z2

puts "MUTABLES"
print z1 # se imprime 4 + 6i, es decir, que se los valores son mutables (cambian)


class ComplejosInMutables
  attr_reader :a , :b
    def initialize(a, b)
      @a = a
      @b = b
    end

    def +(z2)
      ComplejosInMutables.new(@a + z2.a ,@b + z2.b)
    end

    def to_s()
      "#{@a} + #{@b}i"
    end

end

z1 = ComplejosInMutables.new(2, 3)
z2 = ComplejosInMutables.new(2, 3)
z3 = z1 + z2

puts "\nINMUTABLES"
print z1 # se imprime 4 + 6i, es decir, que se los valores son mutables (cambian)
