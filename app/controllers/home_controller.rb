class HomeController < ApplicationController
    def index
        @resultados = Resultado.all.limit(4)
        @localidades = Localidade.all
        @resultado = @resultados.find("635f2c2d213c0deaa770be9c")
    end

   
end