require './lib/photograph'
require './lib/artist'

describe Photograph do
  let(:attributes) { {
    id: "1",
    name: "Rue Mouffetard, Paris (Boy with Bottles)",
    artist_id: "4",
    year: "1954"
  } }

  let(:photograph) { Photograph.new(attributes) }


  it "exists" do
    expect(photograph).to be_a Photograph
  end

  it "has attributes" do
    expect(photograph.id).to eq('1')
  end
end
