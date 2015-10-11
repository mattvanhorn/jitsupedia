require "grape_spec_helper"
require "api/players"

RSpec.describe Jitsupedia::Players do
  describe "GET /players" do
    subject(:endpoint) { -> { get "/players" } }

    it "succeeds" do
      endpoint.call
      expect(last_response.status).to eq(200)
    end

    it "returns an empty array of players" do
      endpoint.call
      expect(JSON.parse(last_response.body)).to eq([])
    end
  end
end
