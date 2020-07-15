require 'dry-struct'
require 'json'


module Types
  include Dry.Types()
end

class Card < Dry::Struct
  attribute :description, Types::String
  attribute :title, Types::String

  def to_json
    {title: self.title,
     description: self.description}.to_json
  end
end
