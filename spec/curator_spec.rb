require './lib/photograph'
require './lib/artist'
require './lib/curator'

describe Curator do
  let(:curator) { Curator.new }
  let(:photo_1) { Photograph.new({
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "1",
      year: "1954"
 }) }

 let(:photo_2) { Photograph.new({
      id: "2",
      name: "Moonrise, Hernandez",
      artist_id: "2",
      year: "1941"
 }) }

 let(:artist_1) { Artist.new({
     id: "1",
     name: "Henri Cartier-Bresson",
     born: "1908",
     died: "2004",
     country: "France"
 }) }
 let(:artist_2) { Artist.new({
     id: "2",
     name: "Ansel Adams",
     born: "1902",
     died: "1984",
     country: "United States"
 }) }

  it "exists" do
    expect(curator).to be_a Curator
  end

  it "starts with no photographs" do
    expect(curator.photographs).to eq []
    expect(curator.artists).to eq []
  end

  it "can add photographs" do
  curator.add_photograph(photo_1)
  curator.add_photograph(photo_2)

  expect(curator.photographs).to eq [photo_1, photo_2]
  end

  it "can add artists" do
  curator.add_photograph(photo_1)
  curator.add_photograph(photo_2)
  curator.add_artist(artist_1)
  curator.add_artist(artist_2)

  expect(curator.artists).to eq [artist_1, artist_2]
  end

  it "can find artist by id" do
  curator.add_photograph(photo_1)
  curator.add_photograph(photo_2)
  curator.add_artist(artist_1)
  curator.add_artist(artist_2)

  expect(curator.find_artist_by_id("1")).to eq(artist_1)
  end
end
