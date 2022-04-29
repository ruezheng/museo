class Curator
  attr_reader :photographs,
              :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs.push(photo)
  end

  def add_artist(artist)
    @artists.push(artist)
  end

  def find_artist_by_id(id)
    @artists.each do |artist|
      return artist if artist.id == id
      # @artists.select {|artist| artist.id == id}[0]
    end
  end

  def photographs_by_artist
    artist_hash = {}
    @artists.each do |artist|
      artist_hash[artist] = @photographs.select { |photo| artist.id == photo.artist_id }
    end
    artist_hash
  end

  def artists_with_multiple_photographs
    photographs_by_artist.select do |artist, photos|
      return [artist.name] if photos.count > 1
    end
  end

  def artist_id_by_country(country)
    @artists.map do |artist|
      artist.id if artist.country == country      # [1] pry(#<Curator>)> artist_id_by_country
    end
  end

  def photographs_taken_by_artist_from(country)   # iterate through artist and return an array of photographs == artist.country
    # @artists.select do |artist|
    #   artist_id_by_country << artist.id if artist.country == country      # [1] pry(#<Curator>)> artist_id_by_country
    #                                                                       # => ["2", "3"]
    # end

    photos_by_artist_id = []
    @photographs.select do |photo|                # iterate through photographs return photo objects that include artist_id
      artist_id_by_country(country).each do |artist_id|
        photos_by_artist_id << photo if photo.artist_id == artist_id
      end
    end
    return photos_by_artist_id
  end

end
