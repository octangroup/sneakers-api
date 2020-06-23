# frozen_string_literal: true

class Sneaker
  include Mongoid::Document
  before_validation :set_slug
  validates :slug, uniqueness: true

  field :id, type: Integer
  field :title, type: String
  field :items, type: Array
  field :slug, type: String

  private

  def set_slug
    self.slug = title.parameterize
  end
end
