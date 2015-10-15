module Ordspel
  module Regional

    def bostonify
      self.gsub(/Er|Ar/, "Ah").gsub(/er|ar/, "ah")
    end

  end
end