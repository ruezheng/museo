class Photograph
  attr_reader :id,
              :name,
              :artist_id,
              :year

  def initialize(attribute)
    @id = attribute[:id]
    @name = attribute[:name]
    @artist_id = attribute[:artist_id]
    @year = attribute[:year]
  end
end
