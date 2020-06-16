class Sneaker
  include Mongoid::Document

    field :_id, type: ObjectId
    field :id, type: Integer
    field :title, type: String
    field :routename, type: String
    field :items, type: Array
  
end
