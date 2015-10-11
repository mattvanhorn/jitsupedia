require "grape"
require "api/players"

module Jitsupedia
  class API < Grape::API
    mount Players
  end
end
