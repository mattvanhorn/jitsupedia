require "models/player"

module Repositories
  class PlayerRepository
    def count
      managed_class.count
    end
    def create(*args)
      managed_class.create(*args)
    end

    private

    def managed_class
      Player
    end
  end
end
