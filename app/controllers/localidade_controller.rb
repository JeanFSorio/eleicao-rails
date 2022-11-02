class LocalidadeController < ApplicationController
    def index
        @localidades = Localidade.all
    end    
end
