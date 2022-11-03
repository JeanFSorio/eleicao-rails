class Cand
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nm, type: String
  field :vap, type: String
  field :pvap, type: String
  field :seq, type: String
  belongs_to :resultado
end
