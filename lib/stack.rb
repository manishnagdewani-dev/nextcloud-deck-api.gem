require 'json'


class Stack
  attr_reader :id
  attr_reader :cards
  attr_reader :title

  def initialize(id, title, cards)
    @id = id
    @cards = cards
    @title = title
  end

  def self.from_json(json)
    data = JSON.parse json

    if data.class == Array
      data.map do |datum|
        Stack.new(datum['id'], datum['title'], datum['cards'])
      end
    else
      Stack.new(data['id'], data['title'], data['cards'])
    end
  end
end
