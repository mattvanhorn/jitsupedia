class Repository
  def self.register(key, repository)
    repositories[key] = repository
  end

  def self.for(key)
    repositories[key]
  end

  def self.reset
    @repositories = {}
  end

  private

  def self.repositories
    @repositories ||= {}
  end
end

require_relative "repositories/player_repository"
