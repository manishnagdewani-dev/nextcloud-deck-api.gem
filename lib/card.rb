require 'json'


class Card
  attr_reader :description
  attr_reader :title

  def initialize(title, description)
    @title = title
    @description = description
  end

  def to_json
    {:title => @title,
     :description => @description}.to_json
  end
end
