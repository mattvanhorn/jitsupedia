require "active_record_spec_helper"
require "services/repositories/player_repository"

RSpec.describe Repositories::PlayerRepository do
  subject(:repo) { described_class.new }

  describe "#count" do
    it "returns a count of persisted records" do
      expect(repo.count).to eq(0)
    end
  end

  describe "#create" do
    let(:attribs) { {
      first_name: "Foo",
      last_name: "Bar",
    } }
    it "adds a player row to the database" do
      expect { repo.create(attribs) }.to change(repo, :count).by(1)
    end
  end
end
