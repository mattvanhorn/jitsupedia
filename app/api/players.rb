require "grape"

module Jitsupedia
  class Players < Grape::API
    get :players do
      []
    end
  end
end
