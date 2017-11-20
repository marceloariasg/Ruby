

  #Abrir archivo y leer
  archivo = File.open('prueba.txt','r')

  #contents = file.read.split("\n")
  contents = archivo.readlines
   archivo.close

  print contents
  #print "\n"∫

  contents.each_slice(4) do |slice|
    # puts slice[0]
    # puts slice[1]
    # puts slice[2]
    # puts slice[3]
    #comentarios =  slice[3].split(',').map(&:chomp)
    #puts "buenos : #{comentarios.count('good')} y malos : #{comentarios.count('bad')}"
  end

  #Se pisa el contenido del archivo
   archivo = File.open('pruebayyy.txt','w')
   archivo.puts "holaaaaa"
   archivo.close

  #Se agrega el contenido del archivo
  archivo = File.open('prueba.txt','a')
  archivo.puts "holaaaaa"
  archivo.close

  #si archivo existe
  filename = 'prueba.txt'
  if File.exists?(filename)
    puts "archivo #{filename} SI existe"
  else
    puts "archivo #{filename} NO existe"
  end

#rescue Exception => msg
#  puts "mensaje de error: " + msg.to_s
