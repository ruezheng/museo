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
end
