class HomeController < ApplicationController
    def index
        @resultados = Resultado.all.select{ |item| item[:pst].to_f > 0.0 }.sort_by!{|r| r.datetime.to_i}.reverse
        @localidades = Localidade.all
        #@resultado = Resultado.find("635f4277213c0deaa770bedf") #ultimo de presidente
    end
    def resultado
        @resultado = Resultado.find(params[:id])

        render json: { html: render_to_string(partial: 'resultados/resultado', locals: {resultado: @resultado}) }

    end
   
end