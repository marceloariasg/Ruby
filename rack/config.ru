#config.ru

require 'rack'

class MiPrimeraWebApp

  def call(env)
      @url =  env['REQUEST_PATH']
      if @url == '/index'
        [200 , {'Content-Type' => 'text/html'} , [File.read('index.html').read]]
      else
        [200 , {'Content-Type' => 'text/html'} , ['<h1>OTRA COSA</h1>']]
      end
  end

end

run MiPrimeraWebApp.new


#PARA EJECUTAR SE DEBE ESCRIBIR POR CONSOLA LA SGTE INSTRUCCION:
#> rackup

#PARA BAJAR HACER CONTROL+C
