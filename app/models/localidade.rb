class Localidade
  include Mongoid::Document
  field :sigla, type: String
  field :nome, type: String
end
