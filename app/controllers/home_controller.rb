class HomeController < ApplicationController
    def index
        @resultados = Resultado.all.sort_by!{|r| r.datetime.to_i}.reverse
        @localidades = Localidade.all
        @resultado = @resultados.find("635f2c2d213c0deaa770be9c")
    end
    def resultado
        @resultado = Resultado.find(params[:id])

        render json: { html: render_to_string(partial: 'resultados/resultado', locals: {resultado: @resultado}) }

    end
   
end