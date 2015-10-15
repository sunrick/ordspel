require "ordspel/version"
require "ordspel/constants"
require "ordspel/language"
require "ordspel/regional"

class String
  include Ordspel::Language
  include Ordspel::Regional
end



