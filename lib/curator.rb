class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id
    end
  end

  def photographs_by_artist
    artist_hash = {}
    @artists.each do |artist|
      artist_hash[artist] = @photographs.select {|photo| photo.artist_id == artist.id}
    end
    artist_hash
  end

  def artists_with_multiple_photographs
    photographs_by_artist.select do |artist, photo|
      return [artist.name] if photo.count > 1
    end
  end

  def photographs_taken_by_artist_from(location)

  end

end


  # * `artists_with_multiple_photographs` - This method returns an Array of names of artists who have more than one photograph


  # * `photographs_taken_by_artists_from(string)` - This method takes a String representing a country. It returns an Array of `Photograph`s that were taken by a photographer from that country.
