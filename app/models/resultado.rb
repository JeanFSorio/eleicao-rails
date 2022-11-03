class Resultado
  include Mongoid::Document
  include Mongoid::Timestamps
  field :dg, type: String
  field :hg, type: String
  field :datatime, type: String
  field :ele, type: String
  field :cdabr, type: String
  has_many :cand, dependent: :destroy
end
