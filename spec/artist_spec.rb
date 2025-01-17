require './lib/photograph'
require './lib/artist'

describe Artist do
  let(:attributes) { {
    id: "2",
    name: "Ansel Adams",
    born: "1902",
    died: "1984",
    country: "United States"
  } }

  let(:artist) { Artist.new(attributes) }

  it "exists and has attributes" do
    expect(artist).to be_a(Artist)
    expect(artist.id).to eq("2")
    expect(artist.name).to eq("Ansel Adams")
    expect(artist.born).to eq("1902")
    expect(artist.died).to eq("1984")
    expect(artist.country).to eq("United States")
  end

  it "#age_at_death" do
    expect(artist.age_at_death).to eq(82)
  end
end
