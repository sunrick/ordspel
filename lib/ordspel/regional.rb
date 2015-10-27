module Ordspel
  module Regional
    include Ordspel::Constants

    def bostonify
      self.gsub(/Er|Ar/, "Ah").gsub(/er|ar/, "ah")
    end

    def minnesotafy
      counter = 0
      string = self.split(/(?<=[?\.!])\s/)
      string.map do |sentence|
        sentence = sentence + " "
        ending = sentence.scan(/[?\.!]\s/).first
        counter += 1
        if counter < string.length
          "Oh ya " + sentence.gsub(ending,'') + " you bet ya" + ending
        else
          "Oh ya " + sentence.gsub(ending,'') + " you bet ya" + ending[0..-2]
        end
      end.join
    end

  end
end