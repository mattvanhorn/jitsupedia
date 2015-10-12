require "active_record_spec_helper"
require "services/repository"

RSpec.describe Repository do
  subject(:repo) { described_class }

  before do
    repo.reset
  end

  describe ".reset" do
    it "clears the repositories" do
      repo.register(:fake, Object.new)
      repo.reset
      expect(repo.for(:fake)).to be_nil
    end
  end

  describe ".for" do
    it "returns nil for missing repositories" do
      expect(repo.for(:fake)).to be_nil
    end
  end

  describe ".register" do
    it "registers repositories to be retrieved by '.for'" do
      fake_repo = Object.new
      repo.register(:fake, fake_repo)
      expect(repo.for(:fake)).to equal(fake_repo)
    end
  end
end
