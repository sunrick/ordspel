require "ordspel/version"

module Ordspel

  @@letter_o = "oóòŏôốồỗổǒöȫőõṍṏȭȯȱøǿǫǭōṓ̂ṑỏȍȏơớờỡởợọộɵｏꜵœꝏꝍȣ"
  @@letter_a = "aáàâǎăãảȧạåḁāąⱥȁấầẫẩậắằẵẳặǻǡǟȁȃɑɐａǽǣꜳꜵꜷꜹꜻ"
  @@letter_e = "eéèêḙěĕẽḛẻėëēȩęɇȅếềễểḝḗḕȇẹệｅæǽǣœ"
  @@consonants = "bcdfghjklmnpqrstvxz"
  @@vowels = "aeiouy"

  def swedify
    self.chars.map do |letter|
      case letter
        when /^[#{@@letter_o}]$/i
          letter = letter =~ /^[#{@@letter_o}]$/ ? "ö" : "Ö"
        when /^[#{@@letter_e}]$/i
          letter = letter =~ /^[#{@@letter_e}]$/ ? "ä" : "Ä"
        when /^[#{@@letter_a}]$/i
          letter = letter =~ /^[#{@@letter_a}]$/ ? "å" : "Å"
        else
          letter
      end
    end.join
  end

  def spanify
    self.split(' ').map do |letter|
      if letter[-1] =~ /^[#{@@consonants}]$/
        letter + "o"
      else
        letter
      end
    end.join(' ')
  end

  def frenchify
    self.gsub(/h/i,'').split(' ').join(' euhhh ') + " euhhh"
  end

  def chinify
    self.chars.map do |letter|
      if letter =~ /^[l]$/i
        letter = letter =~ /^[l]$/ ? "r" : "R"
      else
        letter
      end
    end.join
  end

  def japanify
    "You bring dishonor to whole family."
  end

  def germanify
    string = self.split(" ").map { |word| word.capitalize }.join(' ')
    string[0..1] = "Z" if string[0..1] =~ /^th$/i
    string = "JA Zo, " + string
    string.gsub(/\sth/i, ' Z')
  end

  def russify
    self.chars.map do |letter|
      if letter =~ /^[w]$/i
        letter = letter =~ /^[w]$/ ? "v" : "V"
      else
        letter
      end
    end.join
  end

  def dutchify
    self.chars.map do |letter|
      if letter =~ /^[s]$/i
        letter = letter =~ /^[s]$/ ? "sh" : "Sh"
      else
        letter
      end
    end.join
  end

  def irishify
    "What's the craic? " + self.gsub(/\bMy\b/, 'Me').gsub(/\bmy\b/i, 'me')
  end

  def portugify
    self.gsub(/ce\b/i, 'ção').chars.map do |letter|
      case letter
        when /^[#{@@letter_a}]$/i
          letter = letter =~ /^[#{@@letter_a}]$/ ? "ã" : "Ã"
        when /^[c]$/i
          letter = letter =~ /^[#{@@letter_e}]$/ ? "ç" : "Ç"
        else
          letter
      end
    end.join
  end

  def swissify
    self.frenchify.germanify
  end

  def welshify
    self.chars.map do |letter|
      if letter =~ /^[#{@@vowels}]$/i
          letter = letter =~ /^[#{@@vowels}]$/ ? "y" : "Y"
      end
    end.join
  end

  def belgify
    ("Il y a nonante Manneken-Pis dans le magasin. (mdr) " + self).frenchify
  end

end

class String
  include Ordspel
end



