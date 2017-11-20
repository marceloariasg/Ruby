puts 'RUBY'
puts '---------'

require_relative 'funciones.rb'

#puts 27.class
#puts "hola".class
#puts :"hola".class

#a = 1
#b = 2
#c = a + b
#puts "suma #{c}"

x = 0

while x < 10
    if x.odd?
      puts x
    end
    x+=1
end

#puts 'Ingrese valor :'
#valor = gets.chomp
valor = "key"

if valor == "hola"
puts "valor OK"
end

#WHILE
while valor != "key"
  puts 'Ingrese la clave :'
  valor = gets.chomp
end
puts "lo lograste!!!"

#TIMES
6.times do
  puts "lo lograste!!!"
end

7.times do |i|
  puts "contador: " + i.to_s
end

#FOR
for i in 0..5
  puts "contador con for: " + i.to_s
end

#EACH
(0..5).each do |i|
  puts "contador EACH: " + i.to_s
end

#metodos
def saludos()
  puts "hola"
  puts "soy un metodo"
end

saludos
saludos

def funSuma(valor1,valor2)
  resultado = valor1 + valor2
  puts "este es la suma: #{resultado} , gracias"
end

funSuma(4,6)

#se usa require_relative

puts suma(4,8)
puts resta(4,8)
puts multiplica(4,8)
puts divide(16,8)

#arreglos
puts "arreglos..."
arreglo = [5,"hola", 586,"marcelo",67]

puts arreglo[0]
puts arreglo[1]
puts arreglo[2]

puts arreglo
print arreglo

puts "iterar un arreglo con for"
for elemento in arreglo do
  puts elemento
end

puts "iterando un arreglo con indice"
arreglo.each_with_index do |value,index|
    puts "el indice: #{index} y el valor: #{value}"
end


#HASH
#ejemplo con arreglo
# productos = ['carne', 'pescado', 'leche']
# precios = [1500, 3000, 5000]
# puts "ingrese nombre de producto: "
# search = gets.chomp
# product_index = productos.index(search)
# puts precios[product_index]

#ejemplo usando HASH
productos = {'carne' => 1500, 'pescado' => 3000, 'leche' => 5000}
puts "ingrese nombre de producto usando hash: "
#search = gets.chomp
search = "pescado"
puts productos[search]

#Claves como hash o símbolo
productos = {:carne => 1500, :pescado => 3000, :leche => 5000}
puts "ingrese nombre de producto usando hash y simbolos : "

#search = gets.chomp
puts productos[search.to_sym]

#otra noracion para hash
productos = {carne: 1500, pescado: 3000, leche: 5000}
print productos

#iterando un hash
puts "\n iterando hash: "
productos = {carne: 1500, pescado: 3000, leche: 5000}
productos.each { |key,value| puts key}
productos.each { |key,value| puts value}
productos.each { |key,value| puts "el producto #{key} tiene precio $ #{value}"}

#Agregando y borrando elementos
notas = {}
notas[:juan] = 5.0
notas[:pedro] = 6.5
notas[:luis] = 3.5
print notas
puts "\n eliminando a pedro"
notas.delete(:pedro)
print notas

#OBJECT_ID
puts "\n object_id:"
a = 2
puts a.object_id

a = 3
puts a.object_id

#para clonar un elemnto sin que quede referenciado
productos = {carne: 1500, pescado: 3000, leche: 5000}
productos_copia = productos.clone
productos_copia.delete(:carne)

print productos
print productos_copia

#MAP (modifica el segundo arreglo "b" en la iteracion )
puts "\n\nMAP"
a = [1, 2, 3, 4, 5]
b = a.map do |e|
  e * 2
end
puts b

nombres = ['marcelo', 'alex', 'matias', 'javy', 'rosa', 'fernanda']
largos = nombres.map do |nombre|
  nombre.length
end
puts nombres
puts largos

#SELECT (sirve para buscar dentro de un arreglo)
puts "SELECT"
a = [1, 2, 3, 4, 5, 6, 7, 8]
b = a.select{ |x| x.even? }
#seleccionamos todos los pares
puts b

#REJECT (inverso de SELECT)
puts "REJECT"
a = [1, 2, 3, 4, 5, 6, 7, 8]
b = a.reject{ |x| x.even? }
#seleccionamos todos los impares
puts b

#INJECT
puts "INJECT"
a = [1, 2, 3, 4, 5, 6]
b = a.inject(0) { |sum, x| sum + x }
puts b


#GROUP BY
puts "GROUP BY"
a = [13, 2, 32, 4, 15, 6]
b = a.group_by { |ele| ele.even?}
#seleccionamos todos los impares
puts b


#SORT
puts "SORT"
a = [13, 2, 32, 4, 15, 6]
b = a.sort
puts b
puts a

#EJEMPLOS
arr = [['aaa','bbb'], ['ccc','ddd']]

p arr.last.first

productos = {carne: 1500, pescado: 3000, leche: 5000}
puts productos[:carne]

puts productos.keys

puts '-' * 100

productos.each_key {|key| puts key}
productos.each_value {|value| puts value}

#RANDOM - AZAR
r = rand(9) #del 1 al 9



#USO DE CASE
car = "R"

case car
when "G" then puts "Todos pueden entrar"
  when "PG-13" then puts "Menores de 13 con un adulto"
  when "R" then puts "Menores de 17 con adulto"
  when "NC-17" then puts "Solo mayores de edad"
  else puts "Error en la clasificacion"
end
