class Sneaker
  include Mongoid::Document

    field :title, type: String
    field :items, type: Array
  
end
