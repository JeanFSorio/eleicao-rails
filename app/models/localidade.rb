class Localidade
  include Mongoid::Document
  include Mongoid::Timestamps
  field :sigla, type: String
  field :nome, type: String
end
