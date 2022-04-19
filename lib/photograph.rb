class Photograph
  attr_reader :name, :id, :artist_id, :year

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @artist_id = attributes[:artist_id]
    @year = attributes[:year]
  end
end
