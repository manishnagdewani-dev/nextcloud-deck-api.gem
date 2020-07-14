require 'json'


class Board
  attr_reader :id
  attr_reader :title
  attr_reader :stacks

  def initialize(id, title, stacks)
    @id = id
    @title = title
    @stacks = stacks
  end

  def self.from_json(json)
    data = JSON.parse json

    if data.class == Array
      data.map do |datum|
        Board.new(datum['id'], datum['title'], datum['stacks'])
      end
    else
      Board.new(data['id'], data['title'], data['stacks'])
    end
  end
end
