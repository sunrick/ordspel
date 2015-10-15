module Ordspel
  module Regional
    include Ordspel::Constants

    def bostonify
      self.gsub(/Er|Ar/, "Ah").gsub(/er|ar/, "ah")
    end

  end
end