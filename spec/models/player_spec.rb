require "active_record_spec_helper"
require "models/player"

RSpec.describe Player do
  subject(:player) { described_class.new }
  it "has a first name" do
    player.first_name = "Foo"
    expect(player.first_name).to eq("Foo")
  end
  it "has a last name" do
    player.last_name = "Bar"
    expect(player.last_name).to eq("Bar")
  end
end
